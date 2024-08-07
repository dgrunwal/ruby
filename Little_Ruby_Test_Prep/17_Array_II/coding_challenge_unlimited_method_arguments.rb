# Define a sum_of_string_lengths method that accepts
# any number of strings. The method return the sum
# of the lengths of the strings.
#
# Examples:
# The => indicates the expected return value

def sum_of_string_lengths(*elements)
  total = 0
  elements.each { |element| total += element.length }
  total
end

p sum_of_string_lengths("bob", "loves", "burgers")     # => 15
p sum_of_string_lengths("coding", "is", "so", "fun")   # => 13 
p sum_of_string_lengths()                              # => 0
