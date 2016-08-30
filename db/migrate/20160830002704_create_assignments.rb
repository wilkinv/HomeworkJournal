class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.datetime :date
      t.string :assignment
      t.string :mood
      t.string :length

      t.timestamps
    end
  end
end
