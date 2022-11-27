class Cupcake
  attr_reader :flavor, :grams

  def initialize(flavor = nil, grams = nil)
    @flavor = flavor
    @grams = grams
  end

  def sweetest
    nil
  end

end