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
	{ title: 'NYTimes', url: 'http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml' },
	{ title: 'LATimes', url: 'http://feeds.feedburner.com/latimes/technology' },
	{ title: 'BBC', url: 'http://feeds.bbci.co.uk/news/technology/rss.xml?edition=uk' }
]

tech_feeds.each do |feed|
	Feed.create(title: feed[:title], url: feed[:url], category: tech)
end

sport_feeds = [
	{title: 'Espn', url: 'http://sports.espn.go.com/espn/rss/news'},
	{title: 'Yahoo', url: 'http://sports.yahoo.com/top/rss.xml'},
	{title: 'Cnn', url: 'http://rss.cnn.com/rss/si_topstories.rss'}
]

sport_feeds.each do |feed|
	Feed.create(title: feed[:title], url: feed[:url], category: sports)
end

news_feeds = [
	{title: 'NYTimes', url: 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'},
	{title: 'LATimes', url: 'http://feeds.latimes.com/latimes/news'},
	{title: 'BBC', url: 'http://feeds.bbci.co.uk/news/rss.xml?edition=uk'},
	{title: 'El Mundo', url: 'http://estaticos.elmundo.es/rss/index.xml'}
]

news_feeds.each do |feed|
	Feed.create(title: feed[:title], url: feed[:url], category: news)
end

business_feeds = [
	{title: 'Inc', url: 'http://feeds.inc.com/home/updates?format=xml'},
	{title: 'Wsj', url: 'http://online.wsj.com/xml/rss/3_7014.xml'},
	{title: 'Economist', url: 'http://www.economist.com/feeds/print-sections/77/business.xml'}
]

business_feeds.each do |feed|
	Feed.create(title: feed[:title], url: feed[:url], category: business)
end
