json.extract! task, :id, :label, :category_id, :due_date, :completion_date, :created_at, :updated_at
json.url task_url(task, format: :json)
