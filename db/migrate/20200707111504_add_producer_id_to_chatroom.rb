class AddProducerIdToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :producer, index: true
  end
end
