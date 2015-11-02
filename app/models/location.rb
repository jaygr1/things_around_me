def user_location
  # user_input = gets.chomp
  location = Geocoder.search(user_input)
  latlon = location.first.geometry["location"]
end