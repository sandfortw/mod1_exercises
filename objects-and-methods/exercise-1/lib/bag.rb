class Bag

  attr_accessor :count, :candies

  def initialize 
    @empty = true
    @count = 0
    @candies = []
  end

  def <<(input)
    @candies << input
    @empty = false
    @count += 1 
  end

  def empty?
    @empty
  end

  def contains?(input)
    @candies.any? do |candy|
      candy.type == input
    end
  end
  

end
