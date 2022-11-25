require 'pry'

class Bag
attr_reader :candies
  def initialize
    @candies = [] 
  end

  def count
    @candies.count 
  end

  def empty?
    @candies.empty? 
  end

  def <<(candy)
    @candies << candy
  
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end


  def grab(type)
    candy = candies.find do |candy|
      candy.type == type
    end
    candies.delete(candy)
  end
 
  def take(number)
    taken = []

    number.times do 
      taken << candies.shift
    end

    if number == 1
    taken.first
    else
    taken
    end

    # @count -= number
    # if number == 1
    #   @candies.each do |candy|
    #     return candy
    #   end
    # else
    #   return number
    # end
  end
  
end

  