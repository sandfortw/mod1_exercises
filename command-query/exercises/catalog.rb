class Catalog

  def initialize
    @catalog = []
  end

  def <<(product)
    @catalog << product
  end

  def cheapest
    unless @catalog == [] 
      @catalog.sort_by {|product| product.cost}.first.name
    else 
      nil
    end
  end
  
end