require './lib/recipe'
require 'pry'

class Pantry

  attr_reader   :item,
                :stock,
                :recipe
  attr_accessor :restock,
                :amount,
                :stock_check

  def initialize(item = nil, amount = nil)
    @item = item
    @amount = amount
    @stock = Hash.new
  end

  def stock_check(item)
    @stock_check = amount
  end

  def restock(item, amount)
    @amount += amount
  end

  def convert_units(r)
    r.ingredients.group_by do |ingredient, value|
      if ingredient[value] > 100
        ingredient[:amount][:units] = "Centi-Units"
      elsif ingredient[value] < 1
        ingredient[:amount][:units] = "Milli-Units"
      else
        ingredient[:amount][:units] = "Universal Units"
      end
    end
  end

end
