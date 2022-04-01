json.extract! user, :id, :name, :email, :staff_num, :created_at, :updated_at
json.url user_url(user, format: :json)
