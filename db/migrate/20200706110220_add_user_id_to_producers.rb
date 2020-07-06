class AddUserIdToProducers < ActiveRecord::Migration[6.0]
  def change
    add_reference :producers, :user, index: true
  end
end
