require 'pry'

class Bag
attr_accessor :empty, :count, :candies
  def initialize
    @empty = true
    @count = 0
    @candies = []
    
  end

  def empty?
    @count == 0 ? @empty = true : @empty = false
    @empty
  end

  def <<(candy)
    @candies << candy
    @count +=1
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end


  def grab(type)
    if contains?(type) == true
      @candies.delete(type)
      @count -= 1
      Candy.new(type)
    else
      nil
      print "nil"
    end
  end
 
  def take(number)
    @count -= number
    if number == 1
      @candies.each do |candy|
        return candy
      end
    else
      return number
    end
  end
  
end

  