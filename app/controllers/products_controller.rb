class ProductsController < ApplicationController
  skip_after_action :verify_authorized, only: [:new, :create]

  def new
    @producer = Producer.find(params[:producer_id])
    @product = Product.new
  end

  def create
    @producer = Producer.find(params[:producer_id])
    @product = Product.new(product_params)
    @product.producer = @producer
    authorize @product
    if @product.save
      redirect_to producer_path(@producer)
      flash[:notice] = 'Upload successful.'
    else
      render :new
    end
  end


  private

  def product_params
    params.require(:product).permit(:name, :description)
  end
end
