class FeedsController < ApplicationController
	def index
	end
	def create

		#Creating tech feeds from NYT, LAT & 
		tech_urls = %w[http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml http://feeds.feedburner.com/latimes/technology http://feeds.bbci.co.uk/news/technology/rss.xml?edition=uk]
		tech_feeds = Feedjira::Feed.fetch_raw tech_urls

		#Creating home page feeds from NYT, LAT & BBC
		hp_urls = %w[http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml http://feeds.latimes.com/latimes/news http://feeds.bbci.co.uk/news/rss.xml?edition=uk]
	end

	def edit
	end

	def show
	end

	def update
	end

	def delete
	end
end
