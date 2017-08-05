json.extract! course_request, :id, :requester_name, :requester_email, :requester_contact, :course_id, :created_at, :updated_at
json.url course_request_url(course_request, format: :json)
