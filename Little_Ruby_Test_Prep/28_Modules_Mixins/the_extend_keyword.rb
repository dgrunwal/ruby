# extend keyword - add the mixin's methods as class methods

module Announceable
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announceable
end

class Warehouse
  extend Announceable
end

puts Dog.who_am_i
puts Warehouse.who_am_i

watson = Dog.new
# p watson.who_am_i