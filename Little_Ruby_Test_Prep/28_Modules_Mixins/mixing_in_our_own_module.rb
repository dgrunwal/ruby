# Use inheritance when the relationship is an "is-a" relationship.
# A Car is a type of Vehicle.
# Use modules/mixins when the relationship is a "has-a" relationship.
# A Car is Towable, Purchaseable, Crushable
# We can mix in multiple modules but only inherit from 1 superclass.

module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

class Bodega < Supermarket
end

bookstore = Bookstore.new
supermarket = Supermarket.new
bodega = Bodega.new

puts bookstore.purchase("Animal Farm")
puts supermarket.purchase("Ice Cream")
puts bodega.purchase("Slim Jim")