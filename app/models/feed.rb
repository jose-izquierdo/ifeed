class Feed < ActiveRecord::Base
	has_many :users through :feed_user
	validates :name, presence: true
end
