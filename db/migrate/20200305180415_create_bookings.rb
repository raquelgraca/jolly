class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :play_session, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name_of_kid
      t.string :gender_of_kid
      t.integer :age_of_kid
      t.text :comment
      t.monetize :amount, currency: { present: false }

      t.timestamps
    end
  end
end
