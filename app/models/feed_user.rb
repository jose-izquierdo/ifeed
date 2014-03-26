# == Schema Information
#
# Table name: feed_users
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  feed_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  fk__feed_users_feed_id  (feed_id)
#  fk__feed_users_user_id  (user_id)
#

class FeedUser < ActiveRecord::Base
	belongs_to :user 
	belongs_to :feed 
end
