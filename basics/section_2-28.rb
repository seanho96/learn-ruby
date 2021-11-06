# Hashes
# Key value pair objects

# String as keys
sample_hash = { "a" => 1, "b" => 2, "c" => 3 }
my_details = { "name" => "John", "favcolor" => "red" }

# Access the value using the Key
p my_details["favcolor"] # "red"

# Symbol as keys
p another_hash = { a: 1, b: 2, c: 3 } # {:a => 1, :b => 2, :c => 3}

# Accessing a Hash using Symbol key
p another_hash[:a] # 1

# String vs Symbol
# String is mutable while Symbol is immutable
# A new space in a memory is created for the same string created multiple times
# Same symbol takes up just one place in a computer’s memory
# Example:
# "string".object_id called multiple times returns different object_id
# :symbol.object_id called multiple times returns same object_id

# Show all the Keys in the Hash
p another_hash.keys # [:a, :b, :c]

# Show all the Values in the Hash
p another_hash.values # [1, 2, 3]

# Iteratate through the Hash
another_hash.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end

# Adding Element inside a Hash
another_hash[:d] = "John"
p another_hash # {:a => 1, :b => 2, :c => 3, :d => "John"}

another_hash["d"] = "John"
p another_hash # {:a => 1, :b => 2, :c => 3, "d" => "John"}

# Changing a Value inside the Hash
another_hash[:c] = "Ruby"
p another_hash # {:a => 1, :b => 2, :c => "Ruby", :d => "John"}

# Loop through all entries
p another_hash.each { |key, value| puts "#{key} / #{value}" }
# a / 1
# b / 2
# c / Ruby
# d / John
# {:a=>1, :b=>2, :c=>"Ruby", "d"=>"John"}

# Selecting a specific Class value
# - using .select method
p another_hash.select { |k, v| v.is_a?(String) } # {:c => "Ruby", :d => "John"}

# Delete the Key if value is String
p another_hash.each { |k, v| another_hash.delete(k) if v.is_a?(String) } # {:a => 1, :b => 2}
