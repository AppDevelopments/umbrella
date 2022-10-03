p "Where are you located"

user_location = gets.chomp

#user_location =gets.chomp

p user_location

require "open-uri"

gmaps_api_url="https://maps.googleapis.com/maps/api/geocode/json?address=" + user_location + "&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY"

#full url = https://maps.googleapis.com/maps/api/geocode/json?address=UIC&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY
url= https://www.google.com/maps/place/University+of+Illinois+Chicago/@41.8685636,-87.6506384,17z/data=!4m5!3m4!1s0x880e2ce01f97c2bb:0xa6033e9aa2dbdcdc!8m2!3d41.8685636!4d-87.6484497

#left_side=https://maps.googleapis.com/maps/api/geocode/json?address=
#right_side=&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNy
#full url= left side + user_location + right side

subbed_string = full_url.gsub("UIC", user_location)

raw_gmaps_data=URI.open(subbed_string).read

require "json"

tempfile=URI.open(gmaps_api_url)

p parsed_gmaps_data=JSON.parse(raw_gmaps_data)

results_array=parsed_gmaps_data.fetch("results")

first_result_hash=results_array.at(0)

p results_array.at(0)

p first_result.fetch("geometry")

geometry_hash=first_result_hash.fetch("geometry")



loc=geo.fetch("location")
latitude=loc.fetch("lat")
longitude=loc.fetch("lng")

p "Your coordinates are" +  "latitude" + "longitude".
