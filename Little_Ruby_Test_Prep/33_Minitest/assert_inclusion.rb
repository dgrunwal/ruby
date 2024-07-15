require "minitest/autorun"

class Pokemon
  attr_reader :name, :type, :attacks

  def initialize(name, type)
    @name = name
    @type = type
    @attacks = []
  end

  def add_attack(attack)
    attacks << attack
  end
end

class TestPokemon < Minitest::Test
  def setup
    # Run this method before each test
    @pikachu = Pokemon.new("Pikachu", :electric)
  end

  def teardown
    # Run this method after each test
  end

  def test_name
    assert_equal("Pikachu", @pikachu.name)
  end

  def test_type
    assert_equal(:electric, @pikachu.type)
  end

  def test_adding_new_power
    @pikachu.add_attack("Lightning Bolt")
    @pikachu.add_attack("Electric Shock")
    @pikachu.add_attack("Shock Treatment")
    assert_includes(@pikachu.attacks, "Electric Shock")
  end
end