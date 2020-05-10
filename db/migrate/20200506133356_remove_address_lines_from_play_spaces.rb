class RemoveAddressLinesFromPlaySpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :play_spaces, :street, :string
    remove_column :play_spaces, :street_number, :string
    remove_column :play_spaces, :neighbourhood, :string
    remove_column :play_spaces, :city, :string
    remove_column :play_spaces, :state, :string
    remove_column :play_spaces, :zip_code, :string
  end
end
