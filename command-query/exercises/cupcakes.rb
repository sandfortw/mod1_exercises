require 'pry'

class Cupcakes

  def initialize
    @cupcakes = []
  end

  def <<(cupcake)
    @cupcakes << cupcake
  end

  def sweetest
    # binding.pry
    @cupcakes.sort_by {|cupcake| cupcake.grams}.first
  end

end