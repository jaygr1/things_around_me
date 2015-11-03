require 'json'
require 'open-uri'
require 'yaml'
require 'pry'


class NytEventsApi 




  def self.test
  keys = YAML.load_file('application.yml')
  key = keys['NYT_EVENTS_API_KEY']
  response = open("http://api.nytimes.com/svc/events/v2/listings.json?&ll=40.756146,-73.99021&api-key=#{key}")
  hash = JSON.load(response)
  puts hash
  end
  test
end
  NytEventsApi.test 



