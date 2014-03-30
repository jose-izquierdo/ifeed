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

		last_entry = feed.feed_items.order('published_at DESC').first
		entries.each do |entry|
			if (last_entry.nil? || last_entry.published_at < entry[:published])
				FeedItem.create(name: entry[:name], summary: entry[:summary], url: entry[:url], published_at: entry[:published])
			else 
			  break
			end				
		end

		# Ver fecha ultimo elemento del feed item
		# iterar sobre cada elemento de parse
		# en cada elemento guardar si fecha mayor ultima guardada
		# Borrar elementos antiguos
	end	

	def self.update_feed_items(feed)
		updated_feeds = Feedjira::Feed.update(feed.values)
	end


end