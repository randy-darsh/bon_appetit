require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  attr_reader :pantry

  def setup
    @pantry = Pantry.new("Cheese", 10)
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

    assert_equal @pantry.restock("Cheese", 10), 10
  end

  def test_it_can_add_more_to_stock
    @pantry

    assert_equal @pantry.restock("Cheese", 20), 20
  end

  def test_it_can_convert_units(r)
    @pantry

  end

end
