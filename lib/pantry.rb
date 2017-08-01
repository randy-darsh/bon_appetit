require './lib/recipe'
require 'pry'

class Pantry

  attr_reader   :item,
                :stock,
                :r
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
    r.ingredients.keys.each do |key|
      key.each do |ingredient|
        ingredient = Hash.new{|hash, key| hash[key] = {} }
          quantity[:quantity] = "Centi-Units"
      end

    end
  end
end
