class AddSpecificationToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :display, :string
    add_column :phones, :os, :string
    add_column :phones, :back_camera, :string
    add_column :phones, :font_camera, :string
    add_column :phones, :cpu, :string
    add_column :phones, :ram, :string
    add_column :phones, :storage, :string
    add_column :phones, :sp_storage, :string
    add_column :phones, :sim, :string
    add_column :phones, :battery, :string
  end
end
