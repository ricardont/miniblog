class Post < ApplicationRecord
	validates :content, length: { maximum: 140 }
	belongs_to :user, optional: true
	default_scope { order(updated_at: :desc) }
end
