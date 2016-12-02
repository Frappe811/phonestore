class AddFlagToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :flag, :boolean
  end
end
