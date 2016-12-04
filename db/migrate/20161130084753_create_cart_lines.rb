class CreateCartLines < ActiveRecord::Migration
  def change
    create_table :cart_lines do |t|
      t.references :phone, index: true, foreign_key: true
      t.references :carts, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
