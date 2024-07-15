# Reference

# %b - Abbreviated month name ("Jan")
# %B - Full month name ("January")
# %d - Day of the month (1..31)
# %j - Day of the year (1..366); so-called "Julian date"
# %m - Month as a number (1..12)
# %w - Day of the week as a number (0..6)
# %x - Preferred representation for date (no time)
# %y - Two-digit year (no century)
# %Y - Four-digit year

require "time"

puts Time.parse("2023-01-01")
puts Time.parse("2023/01/01")
# March 4th, 2023
# April 3rd, 2023
puts Time.parse("03-04-2023")

puts

puts Time.strptime("03-04-2023", "%m-%d-%Y")
puts Time.strptime("03-04-2023", "%d-%m-%Y")

my_time = Time.strptime("03-04-2023", "%d-%m-%Y")
puts my_time.year