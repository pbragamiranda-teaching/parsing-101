require "json"

# # TODO - let's read/write data from beatles.json
# filepath = "data/beatles.json"

# # read the file
# serialized_beatles = File.read(filepath)

# # parsing the file into a hash
# beatles = JSON.parse(serialized_beatles)

# # puts beatles
# # p beatles.class
# p beatles["beatles"][3]["last_name"]

filepath_2 = "data/beatles_test.json"

new_beatles = { beatles: [
  {
    first_name: "Timo",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Pauline",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
]}

# File.open(filepath_2, "wb") do |file|
#   file.write(JSON.generate(new_beatles))
# end

read_file = File.read(filepath_2)

p read_file
