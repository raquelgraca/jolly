class CreateKids < ActiveRecord::Migration[5.1]
  def change
    create_table :kids do |t|
      t.string      :first_name
      t.string      :last_name
      t.datetime    :d_o_b
      t.string      :gender
      t.text        :allergies
      t.text        :special_needs_requirements
      t.references  :user, index: true
      t.timestamps
    end
  end
end
