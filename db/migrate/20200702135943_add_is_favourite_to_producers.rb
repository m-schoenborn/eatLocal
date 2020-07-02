class AddIsFavouriteToProducers < ActiveRecord::Migration[6.0]
  def change
    add_column :producers, :is_favourite?, :boolean
  end
end
