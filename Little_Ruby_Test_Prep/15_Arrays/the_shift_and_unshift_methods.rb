units = ["meter", "kilogram", "second", "ampere"]

p units.shift
p units

p units.shift(2)
p units

puts

units.unshift("yard")
p units

units.unshift("inches", "miles")
p units