class Course < ActiveRecord::Base
  validates :name, :course_duration, :course_details, :course_fee, presence: true
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  has_many :student_courses
  has_many :users, through: :student_courses
  has_many :course_requests
end
