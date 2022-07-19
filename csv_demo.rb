require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   # puts "#{row[0]} #{row[1]} plays the #{row[2]}"
#   puts "#{row["First Name"]} #{row["Last Name"]} plays the #{row["Instrument"]}"
# end

students_filepath = "data/students.csv"

students = [
            ["Pedro", "Miranda"],
            ["Ana", "Maradona"],
            ["Ruben", "Voss"],
            ["Ronaldo", "Nazario"],
          ]

CSV.open(students_filepath, "wb") do |csv|
  csv << ["First Name", "Last Name"]
#   # csv << ["Pedro", "Miranda"]
#   # csv << ["Ana", "Maradona"]
#   # csv << ["Ruben", "Voss"]
  students.each do |student|
    csv << student
  end
end
