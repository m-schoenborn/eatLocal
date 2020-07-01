class ChangeStatusOnProducers < ActiveRecord::Migration[6.0]
  def change
    change_column :producers, :status, :string, default: 'unconfirmed'
  end
end
