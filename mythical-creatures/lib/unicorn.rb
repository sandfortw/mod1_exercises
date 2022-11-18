require 'pry'

class Unicorn
  attr_accessor :name, :color

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def silver?
  @color == 'silver' ? true : false 
  end

  def say(saying)
    @saying = "**;* #{saying} **;*"
  end
end
