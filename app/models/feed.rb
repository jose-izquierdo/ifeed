class Feed < ActiveRecord::Base
	has_many :users, through: :feed_users
	validates :name, presence: true
end
