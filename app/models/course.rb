class Course < ActiveRecord::Base
  validates :name, :course_duration, :course_details, :course_fee, presence: true
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
