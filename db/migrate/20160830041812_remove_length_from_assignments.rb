class RemoveLengthFromAssignments < ActiveRecord::Migration[5.0]
  def change
    remove_column :assignments, :length, :string
  end
end
