class TrickOrTreater
attr_reader :bag, :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.count -= 1
    @bag.candies.each do |candy|
      @sugar_level += candy.sugar
      break
    end
    @bag.candies.shift
  end

end