class SearchController < ApplicationController
  def index
    @keywords = params[:keywords] || %w[sleep OR sleeping problem].join(" ")
    @results = Twitter::Search.new(@keywords).per_page(100)
  end
end