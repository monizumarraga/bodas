json.extract! present, :id, :name, :price, :image_id, :user_id, :created_at, :updated_at
json.url present_url(present, format: :json)
