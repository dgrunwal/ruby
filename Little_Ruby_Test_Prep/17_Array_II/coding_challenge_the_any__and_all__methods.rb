# Define a has_greater_than_seven_characters method that 
# accepts an array of strings. It should return a Boolean reflecting
# whether any array element has more than 7 characters.
#
# Examples:
# The => indicates the expected return value

def has_greater_than_seven_characters(elements)
  elements.any? { |element| element.length > 7 }
end

p has_greater_than_seven_characters(["ruby", "exercise", "cat"]) # => true
p has_greater_than_seven_characters(["forest"])                  # => false
p has_greater_than_seven_characters([])                          # => false


# Define an against_all_odds method that accepts an array of numbers. 
# It should return a Boolean reflecting whether all array elements
# are even.
#
# Examples:
# The => indicates the expected return value

def against_all_odds(numbers)
  numbers.all? { |number| number.even? }
end

p against_all_odds([3, 5, 7, 2])                # => false
p against_all_odds([2, 4, 6])                   # => true

