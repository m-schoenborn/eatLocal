class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
    @chatrooms = current_user.chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  def create_chat
    chatroom = Chatroom.find_by(producer_id: params[:producer_id], user_id: current_user.id)
    unless chatroom
      producer = Producer.find(params[:producer_id])
      chatroom = Chatroom.create(producer: producer, user_id: current_user.id)
    end
    authorize chatroom
    redirect_to chatroom_path(chatroom)
  end
end
