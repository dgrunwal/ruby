# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.
#
# Examples:
# The => indicates the expected return value

def custom_split(text, delimiter)
  results = []
  current = ""

  text.each_char do |character|
    if character == delimiter
      results << current if current.length > 0
      current = ""
    else
      current << character
    end
  end

  results << current if current.length > 0
  results
end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j")                # => ["Zebra"]
p custom_split(" hello", " ")               # => ["hello"]