class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
