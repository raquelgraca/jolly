class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :play_space, foreign_key: true
      t.integer :minimum_capacity
      t.integer :maximum_capacity
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
