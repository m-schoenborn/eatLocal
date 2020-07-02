class CreateProductTags < ActiveRecord::Migration[6.0]
  def change
    create_table :product_tags do |t|
      t.references :products, null: false, foreign_key: true
      t.references :tags, null: false, foreign_key: true

      t.timestamps
    end
  end
end
