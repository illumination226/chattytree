class GrouponController < ApplicationController
  def index
  	@output = parseFeed("http://feeds.feedburner.com/groupon")
  end
  
  def abbotsford
  	@output = parseFeed("http://feeds.feedburner.com/grouponabbotsford")
  end    
  
  def abilene
  	@output = parseFeed("http://feeds.feedburner.com/grouponabilene")
  end     
  
  def akron_canton
  	@output = parseFeed("http://feeds.feedburner.com/grouponakron-canton")
  end  
  
  def albany_capital_region
  	@output = parseFeed("http://feeds.feedburner.com/grouponalbany-capital-region")
  end      
  
  def albuquerque
  	@output = parseFeed("http://feeds.feedburner.com/grouponalbuquerque")
  end    
  
  def allentown_reading
  	@output = parseFeed("http://feeds.feedburner.com/grouponallentown-reading")
  end 
  
  def amarillo
  	@output = parseFeed("http://feeds.feedburner.com/grouponamarillo")
  end  
  
  def anchorage
  	@output = parseFeed("http://feeds.feedburner.com/grouponanchorage")
  end      
  
  def ann_arbor
  	@output = parseFeed("http://feeds.feedburner.com/grouponann-arbor")
  end     
  
  def appleton
  	@output = parseFeed("http://feeds.feedburner.com/grouponappleton")
  end  
  
  def asheville
  	@output = parseFeed("http://feeds.feedburner.com/grouponasheville")
  end   
  
  def athens_ga
  	@output = parseFeed("http://feeds.feedburner.com/grouponathens-ga")
  end   
  
  def atlanta
  	@output = parseFeed("http://feeds.feedburner.com/grouponatlanta")
  end    
  
  def augusta
  	@output = parseFeed("http://feeds.feedburner.com/grouponaugusta")
  end   
  
  def austin
  	@output = parseFeed("http://feeds.feedburner.com/grouponaustin")
  end   
  
  def chicago
  	@output = parseFeed("http://feeds.feedburner.com/groupon")
  end   
  
  def los_angeles
  	@output = parseFeed("http://feeds.feedburner.com/grouponlos-angeles")
  end
  
  def miami
  	@output = parseFeed("http://feeds.feedburner.com/grouponmiami")
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