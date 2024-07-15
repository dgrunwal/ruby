# Regular expression - a search pattern for text

phrase = "The Ruby Programming Language is amazing!"

p phrase.include?("Pro")
p phrase.start_with?("The")
p phrase.end_with?("zing!")

puts

p /T/.class
p phrase =~ /P/
p /P/ =~ phrase
p phrase =~ /R/
p phrase =~ /r/
p phrase =~ /m/
p phrase =~ /x/
p phrase =~ /!/
p phrase =~ /by/
p phrase =~ /ang/
p phrase =~ /ing!/