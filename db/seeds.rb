# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tech = Category.create(name: 'Tech')
sports = Category.create(name: 'Sports')

tech_feeds = [
	{ name: 'NYTimes', url: 'http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml' },
	{ name: 'LATimes', url: 'http://feeds.feedburner.com/latimes/technology' },
	{ name: 'BBC', url: 'http://feeds.bbci.co.uk/news/technology/rss.xml?edition=uk' }
]

tech_feeds.each do |feed|
	Feed.create(name: feed[:name], url: feed[:url], category: tech)
end

