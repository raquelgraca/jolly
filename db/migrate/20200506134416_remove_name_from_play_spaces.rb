class RemoveNameFromPlaySpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :play_spaces, :name, :string
  end
end
