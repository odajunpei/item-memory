class CreateCartProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_products do |t|
      #追加
    t.integer :genre_id
    t.string  :name
    t.string  :image_id
    t.text    :introduction
    t.integer :price
    t.boolean :is_active , default: true
    t.timestamps
    end
  end
end
