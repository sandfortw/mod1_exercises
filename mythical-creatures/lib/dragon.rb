class Dragon
attr_accessor :name, :color, :rider

  def initialize(name = "Ramoth", color = :gold, rider = "Lessa")
    @name = name
    @color = color
    @rider = rider 
    @hungry = 0
  end

  def hungry?
    @hungry < 3 ? true : false
  end

  def eat
    @hungry += 1 
  end

end
