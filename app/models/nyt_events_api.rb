require 'json'
require 'open-uri'
require 'yaml'
require 'pry'


class NytEventsApi 

  def self.events(details)
  keys = YAML.load_file('application.yml')
  key = keys['NYT_EVENTS_API_KEY']
  response = open("http://api.nytimes.com/svc/events/v2/listings.json?#{details.join}&api-key=#{key}")
    binding.pry
  hash = JSON.load(response)
  end
end
  



