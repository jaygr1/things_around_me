class SearchController < ApplicationController

  def index
 
  end

  def stub
    attributes = ["zip_code", "category", "free", "kid_friendly"]
    new_object = []
    attributes.map do |attribute|
      if params[attribute] && params[attribute].length > 1
        new_object << "&#{attribute}=#{params[attribute]}"
      end
    end
     results = NytEventsApi.events(new_object)
      @results = results
    
      redirect_to search_index_path
   
  end


 
end