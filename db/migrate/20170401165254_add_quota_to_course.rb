class AddQuotaToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :quota, :integer
  end
end
