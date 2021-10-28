# Comparison Operators

# ==
p 10 == 9 # false
p 10 == "10".to_i # true
p 10 == "10".to_f # true

# !=
p 10 != 9 # true
p "hello" != "bye" # true
p "hello" != "hello" # false

# >=
p 100 >= 100 # true
p 100 >= 99 # true
p 100 >= 101 # false

# <=
p 100 <= 101 # true
p 100 <= 100 # true
p 99 <= 98 # false

# ===
# This operator tests if the right operand has relationship with the left operand
p Integer === 42 # true
p Integer === "Hello" # false
p String === "Hello" # true

# .eql?(object) method
# returns true if obj and other refer to the same hash key
p 10.eql?(10.0) # false
p 10.eql?(10) # true
p 10.eql?("10") # false
p 10.eql?(6) # false
