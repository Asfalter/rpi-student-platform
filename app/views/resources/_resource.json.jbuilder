json.extract! resource, :id, :course_id, :title, :description, :type, :created_at, :updated_at
json.url resource_url(resource, format: :json)