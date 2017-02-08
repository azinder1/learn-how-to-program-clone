class CreateWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.column :objective, :string
      t.column :week_number, :string
      t.column :course_id, :integer
    end
    remove_column :lessons, :week, :string
    add_column :lessons, :week_id, :integer
    remove_column :lessons, :course_id, :integer
  end
end
