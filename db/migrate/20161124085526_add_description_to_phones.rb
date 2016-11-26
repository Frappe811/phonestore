class AddDescriptionToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :description, :text
  end
end
