class CreateProducerNews < ActiveRecord::Migration[6.0]
  def change
    create_table :producer_news do |t|
      t.references :producer, null: false, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
