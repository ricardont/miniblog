class Post < ApplicationRecord
	validates :content, length: { maximum: 140 }
	belongs_to :user, optional: true
	default_scope { order(updated_at: :desc) }
	def local_update_date
		tz = TZInfo::Timezone.get('America/New_York')
		tz.local_time(2018, 2, 1, 7, 30, 0)
		#"#{Time.utc(2018, 2, 1, 12, 30, 0)} - #{updated_at} "		
	end
end
