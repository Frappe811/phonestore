class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :brand_name

      t.timestamps null: false
    end
  end
end
