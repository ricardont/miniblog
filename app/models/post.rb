class Post < ApplicationRecord
	validates :content, length: { maximum: 300 }
	belongs_to :user, optional: true
	default_scope { order(updated_at: :desc) }
	def local_update_date
		timezone = ActiveSupport::TimeZone[TZInfo::Timezone.get('America/Vancouver').period_for_utc(Time.now.utc).utc_offset]
	end
end
