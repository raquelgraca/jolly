class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :street_number, :string
    add_column :users, :neighbourhood, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
    add_column :users, :bio, :text
  end
end
