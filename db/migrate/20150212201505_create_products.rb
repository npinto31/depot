class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :img_url
      t.decimal :price, precision: 2, scale: 2
      t.timestamps null: false
    end
  end
end
