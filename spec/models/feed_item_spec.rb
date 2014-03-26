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

require 'spec_helper'

describe FeedItem do
  pending "add some examples to (or delete) #{__FILE__}"
end
