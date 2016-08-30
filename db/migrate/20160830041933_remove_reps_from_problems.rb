class RemoveRepsFromProblems < ActiveRecord::Migration[5.0]
  def change
    remove_column :problems, :reps, :integer
  end
end
