class AddSellingLocationToProducer < ActiveRecord::Migration[6.0]
  def change
    add_column :producers, :selling_location, :string
  end
end
