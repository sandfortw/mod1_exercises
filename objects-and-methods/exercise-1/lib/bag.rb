require 'pry'
class Bag
  attr_accessor :empty, :count, :candies

  def initialize(count = 0)
    @empty = true
    @count = count
    @candies = []
  end

  def empty?
    @candies == [] ? @empty = true : @empty = false 
  end

  def <<(candy)
    @candies << candy
    @count += 1 
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
  end

  
end

  
end