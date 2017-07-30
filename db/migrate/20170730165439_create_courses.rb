class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :course_fee
      t.integer :course_duration
      t.text :course_details

      t.timestamps null: false
    end
  end
end
