class FeedController < ApplicationController
  # Main Feed View
  # GET /
  def index
    # Set a default parameter if no specific feed is given
    if params[:feedurl].blank?
      @url = "http://www.treehugger.com/feeds/category/cars/"
    else
      @url = params[:feedurl].to_s
    end
    @feed = Feedjira::Feed.fetch_and_parse @url
    @title  = @feed.title.to_s + " From " + @feed.url.to_s
  end
end
