class CreateCourseRequests < ActiveRecord::Migration
  def change
    create_table :course_requests do |t|
      t.string :requester_name
      t.string :requester_email
      t.string :requester_contact
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
