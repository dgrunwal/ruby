# append - add to the end of something

File.open("my_first_file.txt", "a") do |file|
  file.puts "What's up? How you doing?"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end