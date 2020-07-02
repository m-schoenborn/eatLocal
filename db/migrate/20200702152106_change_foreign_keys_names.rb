class ChangeForeignKeysNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :product_tags, :products_id, :product_id
    rename_column :product_tags, :tags_id, :tag_id
    rename_column :products, :producers_id, :producer_id
  end
end
