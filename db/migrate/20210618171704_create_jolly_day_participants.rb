class CreateJollyDayParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :jolly_day_participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :child_name
      t.integer :child_age
      t.string :email_address
      t.string :phone_number
      t.boolean :newsletter_signup
      t.references :jolly_day, foreign_key: true

      t.timestamps
    end
  end
end
