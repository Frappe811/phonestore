class AddCategoryIdToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :category_id, :integer
  end
end
