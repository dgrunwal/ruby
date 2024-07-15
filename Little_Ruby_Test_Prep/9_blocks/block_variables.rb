3.times { |count| puts count }

3.times do |running_count|
  puts "The current count is #{running_count}"
  puts "Boris is wonderful!"
end

# 0
# 1
# 2
# The current count is 0
# Boris is wonderful!
# The current count is 1
# Boris is wonderful!
# The current count is 2
# Boris is wonderful!