class AddUserIdToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :user, null: true, foreign_key: true
  end
end
