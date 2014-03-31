class HomeController < ApplicationController

	def index
    @category_id = params[:category_id]
		@feed_items = FeedItem.last_news(params[:category_id])
    @categories = Category.all
	end

end
