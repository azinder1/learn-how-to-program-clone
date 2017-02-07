class Courses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.column :name, :string
    end
    create_table :lessons do |t|
      t.column :name, :string
      t.column :week, :string
      t.column :day, :string
      t.column :course_id, :integer
    end
  end
end
