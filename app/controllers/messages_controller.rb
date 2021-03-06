class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @message
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        content: render_to_string(partial: "message", locals: { message: @message })
      )
      # redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
      # redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show" # id: @chatroom.id
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
