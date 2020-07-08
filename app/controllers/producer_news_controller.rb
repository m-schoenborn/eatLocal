class ProducerNewsController < ApplicationController
  skip_after_action :verify_authorized, only: [:new, :create]

  def new
    @producer = Producer.find(params[:producer_id])
    @producer_news = ProducerNews.new
  end

  def create
    @producer = Producer.find(params[:producer_id])
    @producer_news = ProducerNews.new(producer_news_params)
    @producer_news.producer = @producer
    authorize @producer_news
    if @producer_news.save
      redirect_to producer_path(@producer)
      flash[:notice] = 'Upload successful.'
    else
      render :new
    end
  end

  private
  def producer_news_params
     params.require(:producer_news).permit(:title, :description)
  end
end
