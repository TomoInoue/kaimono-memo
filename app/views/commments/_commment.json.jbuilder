json.extract! commment, :id, :user_name, :body, :idea_id, :created_at, :updated_at
json.url commment_url(commment, format: :json)