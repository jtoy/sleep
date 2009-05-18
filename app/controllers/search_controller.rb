class SearchController < ApplicationController
  #use keywords cache because we dont need a database for this simple app and there is only 1 process running
  
  def index
    @keywords = params[:keywords] || Rails.cache.read('keywords')
    @results = Twitter::Search.new(@keywords).per_page(100).page(params[:page])
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def keywords
    Rails.cache.write('keywords',params[:keywords]) unless params[:keywords].blank?
    redirect_to "index"
  end
  
end