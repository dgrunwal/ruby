require "date"

puts Date.new(1991)
puts Date.new(1991, 4)
puts Date.new(1991, 4, 12)

birthday = Date.new(1991, 4, 12)
puts birthday.class
puts birthday.year
puts birthday.day
puts birthday.month

puts birthday.monday?
puts birthday.tuesday?
puts birthday.wednesday?
puts birthday.thursday?
puts birthday.friday?