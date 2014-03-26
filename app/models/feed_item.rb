# == Schema Information
#
# Table name: feed_items
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  summary      :string(1000)
#  url          :string(255)
#  published_at :date
#  feed_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  fk__feed_items_feed_id  (feed_id)
#

class FeedItem < ActiveRecord::Base
	belongs_to :feed 
end
