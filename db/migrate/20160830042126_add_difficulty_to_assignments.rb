class AddDifficultyToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :difficulty, :string
  end
end
