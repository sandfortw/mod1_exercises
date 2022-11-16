require 'pry'

class Unicorn
  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def silver?(color)
    color == "silver" ? true : false
  end

end