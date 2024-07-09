require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
# url = "https://api.github.com/users/MM-Japan"

# serialized_user = URI.open(url).read

# user =  JSON.parse(serialized_user)

# puts "#{user["name"]} - #{user["bio"]}"
puts "Insert a star wars character:"
print ">"
name = gets.chomp

url = "https://swapi.dev/api/people/?search=#{name}"

serialized_character = URI.open(url).read

character = JSON.parse(serialized_character)["results"][0]

puts "#{character["name"]} has #{character["eye_color"]} eyes and #{character["hair_color"]} hair"
