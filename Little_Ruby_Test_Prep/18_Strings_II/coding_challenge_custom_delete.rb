# Define a custom_delete method that accepts a text string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in 
# delete method in your solution.

def custom_delete(text, characters_to_delete)
  result = ""

  text.each_char do |character|
    unless characters_to_delete.include?(character)
      result << character
    end
  end

  result
end

p custom_delete("cottage cheese", "c")     # "ottage heese"
p custom_delete("cottage cheese", "e")     # "cottag chs"
p custom_delete("cottage cheese", "ce")    # "ottag hs"
p custom_delete("cottage cheese", "ec")    # "ottag hs"