class RemoveAddressLinesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :street, :string
    remove_column :users, :street_number, :string
    remove_column :users, :neighbourhood, :string
    remove_column :users, :city, :string
    remove_column :users, :state, :string
    remove_column :users, :zip_code, :string
  end
end
