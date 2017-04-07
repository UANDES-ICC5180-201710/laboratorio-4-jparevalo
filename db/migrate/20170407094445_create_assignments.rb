class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :enunciado
      t.references :course_id, foreign_key: true

      t.timestamps
    end
  end
end
