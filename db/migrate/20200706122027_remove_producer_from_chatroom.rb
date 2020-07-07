class RemoveProducerFromChatroom < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :producer, null: false, foreign_key: true
  end
end
