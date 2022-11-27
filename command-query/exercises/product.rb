class Product
attr_reader :cost, :name

  def initialize(name, cost)
    @name = name
    @cost = cost
  end

end