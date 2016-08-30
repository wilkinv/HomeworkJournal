class RemoveSetsFromProblems < ActiveRecord::Migration[5.0]
  def change
    remove_column :problems, :sets, :integer
  end
end
