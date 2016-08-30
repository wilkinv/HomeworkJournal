class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
