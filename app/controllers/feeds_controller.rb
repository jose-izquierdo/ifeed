class FeedsController < ApplicationController
	def index
	end
	def create

		#Creating tech feeds from NYT, LAT & 
		tech_urls = %w[http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml http://feeds.feedburner.com/latimes/technology http://feeds.bbci.co.uk/news/technology/rss.xml?edition=uk]
		tech_feeds = Feedjira::Feed.fetch_and_parse tech_urls

		#Creating home page feeds from NYT, LAT & BBC
		hp_urls = %w[http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml http://feeds.latimes.com/latimes/news http://feeds.bbci.co.uk/news/rss.xml?edition=uk]
		hp_feeds = Feedjira::Feed.fetch_and_parse hp_urls

		#Creating sports feeds from ESPN, Yahoo Sports & Sport Illustrated
		sport_urls = %w[http://sports.espn.go.com/espn/rss/news http://sports.yahoo.com/top/rss.xml http://rss.cnn.com/rss/si_topstories.rss]
		sport_feeds = Feedjira::Feed.fetch_and_parse sport_urls

		#Creating business feed from Inc, WSJ & The Economist
		business_urls = %w[http://feeds.inc.com/home/updates?format=xml http://online.wsj.com/xml/rss/3_7014.xml http://www.economist.com/feeds/print-sections/77/business.xml] 
		business_feeds = Feedjira::Feed.fetch_an sport_urls
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
