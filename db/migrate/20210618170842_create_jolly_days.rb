class CreateJollyDays < ActiveRecord::Migration[6.0]
  def change
    create_table :jolly_days do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :maximum_capacity
      t.integer :minimum_age
      t.integer :maximum_age

      t.timestamps
    end
  end
end
