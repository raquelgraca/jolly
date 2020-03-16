class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :stars
      t.references :reviewer
      t.references :reviewee

      t.timestamps
    end
  end
end
