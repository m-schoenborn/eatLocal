class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    authorize @favorite
    @favorite.user = current_user
    @favorite.producer = Producer.find(params[:producer_id])
    @favorite.save
  end

  def destroy
    producer = Producer.find(params[:producer_id])
    @favorite = Favorite.where("user_id = ? and producer_id = ?", current_user.id, producer.id).first
    authorize @favorite
    # @favorite.user = current_user
    @favorite.destroy
  end
end
