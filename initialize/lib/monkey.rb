class Monkey
  attr_accessor :name, :type, :favorite_food

  def initialize(attributes)
    @name = attributes[0]
    @type = attributes[1]
    @favorite_food = attributes[2]
  end
end
