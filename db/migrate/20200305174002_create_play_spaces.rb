class CreatePlaySpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :play_spaces do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :street
      t.string :street_number
      t.string :neighbourhood
      t.string :city
      t.string :state
      t.string :zip_code
      t.text :facilities

      t.timestamps
    end
  end
end
