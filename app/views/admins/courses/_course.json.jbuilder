json.extract! course, :id, :name, :course_fee, :course_duration, :course_details, :created_at, :updated_at
json.url course_url(course, format: :json)
