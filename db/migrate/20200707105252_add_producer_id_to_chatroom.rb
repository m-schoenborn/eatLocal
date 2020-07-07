class AddProducerIdToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :producer_id, :integer
  end
end
