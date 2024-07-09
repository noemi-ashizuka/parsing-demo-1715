require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   # puts "#{row[0]} #{row[1]} plays the #{row[2]}"
#   # p row
#   puts "#{row["First Name"]} #{row["Last Name"]} plays the #{row["Instrument"]}"
# end

filepath_two = "data/new_band.csv"

CSV.open(filepath_two, "wb") do |csv|
  csv << ["First Name","Last Name","Instrument", ""]
  csv << ["Joe", "Estrem", "piano, drums"]
  csv << ["Nicholas", "Matsumoto", "guitar","18"]
  csv << ["Pierre", "Conte", "bass"]
end
