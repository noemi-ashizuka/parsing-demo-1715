require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# PARSING JSON

# serialized_beatles =  File.read(filepath)

# beatles = JSON.parse(serialized_beatles)

# beatles["beatles"].each do |beatle|
#   puts "#{beatle["first_name"]} plays the #{beatle["instrument"]}"
# end

# STORING JSON

filepath_two = "data/cool_guys.json"

cool_guys = {
  cool_guys: [
    {
      "first_name": "Joe",
      "last_name": "Estrem",
      "instrument": "Guitar"
    },
    {
      "first_name": "Pierre",
      "last_name": "Conte",
      "instrument": "Bass Guitar"
    },
    {
      "first_name": "Nicholas",
      "last_name": "Matsumoto",
      "instrument": "Drums"
    },
  ]
}

# p JSON.generate(cool_guys)

File.open(filepath_two, "wb") do |file|
  file.write(JSON.pretty_generate(cool_guys))
end
