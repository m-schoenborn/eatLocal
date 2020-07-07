class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  def create_chat
    chatroom = Chatroom.find_by(producer_id: params[:producer_id], user_id: current_user.id)
    unless chatroom
      chatroom = Chatroom.create(producer_id: params[:producer_id], user_id: current_user.id)
    end
    authorize chatroom
    redirect_to chatroom_path(chatroom)
  end
end
