module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

class Supermarket
  include Purchaseable
end

class Bodega < Supermarket
end

bookstore = Bookstore.new
supermarket = Supermarket.new
bodega = Bodega.new

p Bookstore.ancestors
p Purchaseable.class
p Object.class
p Kernel.class
p BasicObject.class

puts

p bookstore.is_a?(Bookstore)
p bookstore.is_a?(Purchaseable)
p bookstore.is_a?(Object)
p bookstore.is_a?(Kernel)
p bookstore.is_a?(BasicObject)

puts 

p bookstore.purchase("Animal Farm")