class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.references :person_id, foreign_key: true
      t.references :assignment_id, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
