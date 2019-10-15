json.extract! post, :id, :user_id, :content, :media, :recipient_id, :created_at, :updated_at
json.url post_url(post, format: :json)
