# select - build new hash by keeping key-value pairs based on a condition
# reject - build new hash by discarding key-value pairs based on a condition

recipe = { sugar: 3, flour: 10, salt: 1, pepper: 8 }

p recipe.select { |ingredient, teaspoons| teaspoons >= 5 }
p recipe.select { |ingredient, teaspoons| ingredient.length == 5 }
puts

p recipe.reject { |ingredient, teaspoons| teaspoons.even? }
p recipe.reject { |ingredient, teaspoons| ingredient.to_s.include?("s") }