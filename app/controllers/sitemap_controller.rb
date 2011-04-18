class SitemapController < ApplicationController
  def index
  end

  def sitemap
	headers["Content-Type"] = "text/xml"
  end

end
