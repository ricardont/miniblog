class Post < ApplicationRecord
	validates :content, length: { maximum: 140 }
	belongs_to :user, optional: true
	default_scope { order(updated_at: :desc) }
	def local_update_date
		#tz = TZInfo::Timezone.get('America/New_York')
		# TZInfo::Timezone.get('America/New_York')
		# tz = TZInfo::Timezone.get('America/New_York')
		# tz.to_local(Time.utc(2018, 2, 1, 12, 30, 0))
		timezone = ActiveSupport::TimeZone[TZInfo::Timezone.get('America/Vancouver').period_for_utc(Time.now.utc).utc_offset]
		#"#{Time.utc(2018, 2, 1, 12, 30, 0)} - #{updated_at} "		
	end
end
