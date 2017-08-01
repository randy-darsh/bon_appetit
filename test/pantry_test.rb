require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  attr_reader :pantry

  def setup
    @pantry = Pantry.new("Cheese", 10)
    @r = Recipe.new("Spicy Cheese Pizza")
    @r.add_ingredient("Cayenne Pepper", 0.025)
    @r.add_ingredient("Cheese", 75)
    @r.add_ingredient("Flour", 500)
  end

  def test_it_exists
    @pantry

    assert_instance_of Pantry, @pantry
  end

  def test_it_has_an_item
    @pantry

    assert_equal @pantry.item, "Cheese"
  end

  def test_it_has_an_amount
    @pantry

    assert_equal @pantry.amount, 10
  end

  def test_stock_starts_as_empty_hash
    @pantry

    assert_nil nil, @stock
  end

  def test_it_can_stock_check
    @pantry

    assert_equal @pantry.stock_check("Cheese"), 10
  end

  def test_it_can_add_to_stock
    @pantry

    assert_equal @pantry.restock("Cheese", 10), 20
  end

  def test_it_can_add_more_to_stock
    @pantry

    assert_equal @pantry.restock("Cheese", 20), 30
  end

  def test_it_can_convert_units
    @pantry
binding.pry
    assert_equal @pantry.convert_units(@r), {"Cayenne Pepper" => {quantity: 25, units: "Milli-Units"},
                                             "Cheese"         => {quantity: 75, units: "Universal Units"},
                                             "Flour"          => {quantity: 5, units: "Centi-Units"}}
  end

end
