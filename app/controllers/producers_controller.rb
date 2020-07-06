class ProducersController < ApplicationController
  # http://localhost:3000/producers?query=&lat=&lng=&commit=SEARCH
  def index
    @producers = policy_scope(Producer)
    if params[:lat].present? && params[:lng].present?
      @producers = @producers.near([params[:lat], params[:lng]], 20)
    elsif params[:query_product].present?
      # @producers = @producers.search_by_name(params[:query_product])
      @products = Product.search_by_tag(params[:query_product])
      @producers = @products.map(&:producer).uniq
      @producers = @producers.select { |producer| producer.status == 'accepted' }
    else
      @producers = @producers.geocoded
    end
    # @producers = Producer.where(status: 'accepted')
    # if params[:query].present?
    #   @producers = Producer.where(status: 'accepted').near([params[:lat], params[:lng]], 20)
    # else
    #   @producers = Producer.where(status: 'accepted').geocoded

    # end

    @markers = @producers.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { producer: producer })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @producer = Producer.find(params[:id])
    authorize @producer
  end

  def new
    @producer = Producer.new
    authorize @producer
    # current_user.role = 'admin'
  end

  def create
    @producer = Producer.new(producer_params)
    @producer.user = current_user
    authorize @producer
    if @producer.save
      redirect_to root_path
      flash[:notice] = 'Request successful. You will be contacted by eatLocal'
    else
      render :new
    end
  end

  def edit
    @producer = Producer.find(params[:id])
    authorize @producer
    # current_user.role = 'admin'
  end

  def update
    # current_user.role = 'admin'
    @producer = Producer.find(params[:id])
    authorize @producer
    if @producer.update(producer_params)
      redirect_to producer_path(@producer)
    else
      render :edit
    end
  end

  def accept
    @producer = Producer.find(params[:id])
    authorize @producer
    @producer.status = 'accepted'
    if @producer.save
      ProducerMailer.with(producer: @producer).acceptance_email.deliver_now
      redirect_to admin_dashboard_path
      flash[:notice] = 'Mail sent successful'
    else
      redirect_to admin_dashboard_path
      flash[:notice] = 'Mail not sent. Please try again'
    end
    # ProducerMailer.acceptance_email(@producer).deliver_now
  end

  def decline
    @producer = Producer.find(params[:id])
    @producer.status = 'declined'
    @producer.save
  end

  private

  def producer_params
    params.require(:producer).permit(:name, :phone_number, :address, :email, :description)
  end
end
