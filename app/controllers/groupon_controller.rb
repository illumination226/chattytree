class GrouponController < ApplicationController
  def index
  	@output = parseFeed("http://feeds.feedburner.com/groupon")
  end
  
  def phoenix
  	@output = parseFeed("http://feeds.feedburner.com/grouponphoenix")
  end  
  
    def parseFeed (url)
      require 'rss/2.0'
	  require 'open-uri'
      feed_url = url
	  output = "" 
	  open(feed_url) do |http|
	    response = http.read
	    result = RSS::Parser.parse(response, false)
	     output += "<span class=\"feedTitle\">#{result.channel.title}</span><br /><ul>" 
	    result.items.each_with_index do |item, i|
	     	 output += "<li><a href=\"#{item.link}\">#{item.title}</a><p>#{item.description}</p></li>"
	    end 
	    output += "</ul>" 
	  end   
      return output
   end   
end