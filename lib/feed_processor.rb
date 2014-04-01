class FeedProcessor

	def self.fetch_and_parse
		Feed.find_each do |feed|
			self.process_feed(feed)
		end
	end	


	def self.process_feed(feed)
		result = Feedjira::Feed.fetch_and_parse feed.url
		self.create_feed_items(feed, result.entries)
	end

	def self.create_feed_items(feed, entries)

		last_entry = feed.feed_items.order('published_at asc').first
		entries.each do |entry|
			if (last_entry.nil? || last_entry.published_at < entry[:published])
				feed.feed_items.create(title: entry[:title], summary: self.truncate(entry[:summary]), url: entry[:url], published_at: entry[:published])
			else 
			  break
			end				
		end

		purge_old(feed)
	end	


  private
  def self.truncate(summary)
    # TODO: Smarter truncation
    Sanitize.clean(summary).truncate(10000)
  end

  def self.purge_old(feed)
  	last_item = feed.feed_items.limit(1).offset(100).first
  	if last_item.present?
  		feed.feed_items.where(["published_at < ?", last_item.published_at]).destroy_all
  	end
  end
end

