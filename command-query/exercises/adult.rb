class Adult

  def initialize
    @sober = true
    @drink_counter = 0
  end

  def consume_an_alcoholic_beverage
    @drink_counter += 1
    @drink_counter > 2 ? @sober = false : nil
  end

  def sober?
    @sober
  end


end