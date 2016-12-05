class AddFlagToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :flag, :boolean
  end
end
