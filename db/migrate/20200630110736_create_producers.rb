class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :phone_number
      t.string :address
      t.string :email
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
