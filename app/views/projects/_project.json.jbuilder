json.extract! project, :id, :title, :description, :budget, :expert, :duration, :location, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
