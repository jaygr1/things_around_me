class SearchController < ApplicationController

  def index
    # kid_friendly = params[:kid_friendly] 
    # free = params[:free]
  end

  def stub
    attributes = ["zip_code", "category", "free", "kid_friendly"]
    new_object = []
    attributes.map do |attribute|
      if params[attribute] && params[attribute].length > 1
        new_object << "&#{attribute}=#{params[attribute]}"
      end
    end
   
  end


 
end