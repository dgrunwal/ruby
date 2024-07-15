puts "Welcome to the program"

load "another_file.rb"

some_method
table = Table.new
puts table.class

load "./another_file.rb"
load "./another_file.rb" if 8 > 5

puts "We've reached the end of our program."