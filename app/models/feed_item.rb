# == Schema Information
#
# Table name: feed_items
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  summary      :string(10000)
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

  default_scope { order(published_at: :desc) }

  delegate :title, to: :feed, prefix: true
  delegate :category_name, to: :feed, prefix: true


  def self.last_news(category_id)
    category_id.present? ? self.category_items(category_id) : self.today_items
  end

  private
  def self.category_items(category_id)
    feeds = Feed.by_category(category_id)
    feeds.map do |feed|
      feed.feed_items.limit(3).all
    end.compact #Borra si hay alguno elemento vacio
  end

  def self.today_items
    # TODO: Better algorithm
    self.includes(feed: :category).limit(50).load.sort_by{rand}[0..10]
  end

end
