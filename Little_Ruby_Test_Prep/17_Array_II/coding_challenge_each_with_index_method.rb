# Define a product_of_number_and_index method that accepts an array of numbers. 
# The method should iterate over the elements. For each element,
# it should multiply the element by its index position. It should
# then add that product to a rolling sum. Return the final sum.
# If the array has no elements, the final sum should be 0.
#
# Examples:
# The => indicates the expected return value

def product_of_number_and_index(numbers)
  sum = 0
  numbers.each_with_index { |number, index| sum += number * index }
  sum
end

p product_of_number_and_index([1, 2, 3]) #=> (0 * 1) + (1 * 2) + (2 * 3) => 8
p product_of_number_and_index([])        #=> 0

