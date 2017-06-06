require './lib/recipe'

class Pantry

  attr_reader   :item,
                :stock
  attr_accessor :restock,
                :amount,
                :stock_check

  def initialize(item, amount)
    @item = item
    @amount = amount
    @stock = Hash.new
  end

  def stock_check(item)
    @stock_check = amount
  end

  # require 'pry'; binding.pry

  def restock(item, amount)
    @amount = amount
  end

  def convert_units(r)
  end


end
