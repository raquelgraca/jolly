class CreatePlaySessions < ActiveRecord::Migration[5.2]
  def change
    create_table :play_sessions do |t|
      t.references :appointment, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.text :requirements
      t.string :status

      t.timestamps
    end
  end
end
