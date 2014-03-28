# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tech = Category.create(name: 'Tech')
sports = Category.create(name: 'Sports')
news = Category.create(name: 'News')
business = Category.create(name: 'Business')

tech_feeds = [
	{ name: 'NYTimes', url: 'http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml' },
	{ name: 'LATimes', url: 'http://feeds.feedburner.com/latimes/technology' },
	{ name: 'BBC', url: 'http://feeds.bbci.co.uk/news/technology/rss.xml?edition=uk' }
]

tech_feeds.each do |feed|
	Feed.create(name: feed[:name], url: feed[:url], category: tech)
end

sport_feeds = [
	{name: 'Espn', url: 'http://sports.espn.go.com/espn/rss/news'},
	{name: 'Yahoo', url: 'http://sports.yahoo.com/top/rss.xml'},
	{name: 'Cnn', url: 'http://rss.cnn.com/rss/si_topstories.rss'}
]

sport_feeds.each do |feed|
	Feed.create(name: feed[:name], url: feed[:url], category: sports)
end

news_feeds = [
	{name: 'NYTimes', url: 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'},
	{name: 'LATimes', url: 'http://feeds.latimes.com/latimes/news'},
	{name: 'BBC', url: 'http://feeds.bbci.co.uk/news/rss.xml?edition=uk'}
]

news_feeds.each do |feed|
	Feed.create(name: feed[:name], url: feed[:url], category: news)
end

business_feeds = [
	{name: 'Inc', url: 'http://feeds.inc.com/home/updates?format=xml'},
	{name: 'Wsj', url: 'http://online.wsj.com/xml/rss/3_7014.xml'},
	{name: 'Economist', url: 'http://www.economist.com/feeds/print-sections/77/business.xml'}
]

business_feeds.each do |feed|
	Feed.create(name: feed[:name], url: feed[:url], category: business)
end
