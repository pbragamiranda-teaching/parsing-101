require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
puts "Hello lovely person, what is your github username?"
username = gets.chomp

url = "https://api.github.com/users/#{username}"

website = URI.open(url).read
parsed_info = JSON.parse(website)

puts "Username: #{parsed_info["login"]} has #{parsed_info["followers"]} followers"
