class RemoveMoodFromAssignments < ActiveRecord::Migration[5.0]
  def change
    remove_column :assignments, :mood, :string
  end
end
