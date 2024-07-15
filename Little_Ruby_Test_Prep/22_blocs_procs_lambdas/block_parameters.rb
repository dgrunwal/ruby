def speak_the_truth(name)
  yield(name)
end

speak_the_truth("Boris") { |name| puts "#{name} is brilliant!" }
speak_the_truth("Sarah") { |name| puts "#{name} is incredible!" }

def number_evaluation(num1, num2, num3)
  yield(num1, num2, num3) # 30
end

p number_evaluation(5, 10, 15) { |a, b, c| a + b + c }
p number_evaluation(3, 4, 5) { |a, b, c| a * b * c }