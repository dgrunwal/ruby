def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    puts "CLASS NAME: #{e.class}"
    puts "MESSAGE: #{e.message}"
  rescue NoMethodError => error
    puts "We're gonna do something different to resolve a NoMethodError"
    puts "CLASS NAME: #{error.class}"
    puts "MESSAGE: #{error.message}"
  end
end

puts sum(3, 5)
puts sum(3, "5")
puts sum(nil, nil)