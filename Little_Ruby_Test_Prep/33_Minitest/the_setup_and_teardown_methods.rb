require "minitest/autorun"

class Pokemon
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end

class TestPokemon < Minitest::Test
  def setup
    # Run this method before each test
    @pikachu = Pokemon.new("Pikachu", :electric)
  end

  def teardown
    # Run this method after each test
    puts "Test is done. Deleting Pokemon from database"
  end

  def test_name
    assert_equal("Pikachu", @pikachu.name)
  end

  def test_type
    assert_equal(:electric, @pikachu.type)
  end
end