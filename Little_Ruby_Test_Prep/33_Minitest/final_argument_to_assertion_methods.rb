require "minitest/autorun"

class InvalidAttackError < StandardError
end

class Pokemon
  attr_reader :name, :type, :attacks

  def initialize(name, type)
    @name = name
    @type = type
    @attacks = []
  end

  def add_attack(attack)
    raise InvalidAttackError unless attack.is_a?(String)
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
    assert_equal("Pikachu", @pikachu.name, "The Pokemon object did not assign its name correctly")
  end

  def test_type
    assert_equal(:electric, @pikachu.type, "The Pokemon object did not assign its type correctly")
  end

  def test_adding_new_power
    @pikachu.add_attack("Lightning Bolt")
    @pikachu.add_attack("Electric Shock")
    @pikachu.add_attack("Shock Treatment")
    assert_includes(@pikachu.attacks, "Electric Shock", "The add_attack method did not correctly add a power to the Pokemon's attack collection")
  end

  def test_adding_fake_power
    assert_raises(InvalidAttackError, "Adding a non-string attack should have triggered an error but did not") do
      @pikachu.add_attack(15)
    end
  end
end