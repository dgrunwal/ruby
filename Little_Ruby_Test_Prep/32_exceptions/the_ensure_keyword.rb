def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    a = a.to_i
    b = b.to_i
    retry
  rescue NoMethodError => error
    puts "Can't solve this, sorry"
  ensure
    puts "I'm always going to run"
  end
end

puts sum(3, 5)
puts sum(3, "5")
puts sum("3", 5)
puts sum(nil, nil)