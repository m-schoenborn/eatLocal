class ProducersController < ApplicationController
  def index
    @producers = Producer.geocoded

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
  end

  def new
    @producer = Producer.new
    current_user.role == 'admin'
  end

  def create
    @producer = Producer.new(producer_params)
    current_user.role = 'admin'
    @producer.save
    redirect_to admin_dashboard_path
  end

  def edit
    current_user.role = 'admin'
  end

  def update
    current_user.role = 'admin'
    @producer.update(producer_params)
  end

  private

  def producer_params
    params.require(:producer).permit(:name, :phone_number, :address, :email, :description)
  end
end
