[10, 20, 30].each { |number| puts "The square of #{number} is #{number * number}"}
puts

def custom_each(elements)
  i = 0

  while i < elements.length
    yield(elements[i])
    i += 1
  end
end

custom_each([10, 20, 30]) { |number| puts "The square of #{number} is #{number * number}"}

custom_each(["Boris", "Arnold", "Melissa"]) do |name|
  puts "The length of #{name} is #{name.length}"
end