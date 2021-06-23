class AddAddressToPlaySpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :play_spaces, :street, :string
    add_column :play_spaces, :street_number, :string
    add_column :play_spaces, :neighbourhood, :string
    add_column :play_spaces, :city, :string
    add_column :play_spaces, :state, :string
    add_column :play_spaces, :zip_code, :string
  end
end
