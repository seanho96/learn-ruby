dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
puts "Do you want to lookup an area code based on a city name? (Y/N)"
answer = gets.chomp.downcase
return if answer != "y"
city_names = get_city_names(dial_book)
40.times { print "-" }
puts
puts city_names
40.times { print "-" }
puts
loop do
  begin
    puts "Enter your selection"
    area = gets.chomp.downcase
    raise "Invalid city name, please try again" unless city_names.include?(area)
    puts get_area_code(dial_book, area).to_i
    break
  rescue => ex
    puts ex.message
  end
end
