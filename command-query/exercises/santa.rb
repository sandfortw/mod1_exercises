class Santa

  def initialize
    @fat_counter = 0
  end

  def fits?
    @fat_counter <= 2
  end

  def eats_cookies
    @fat_counter += 1 
  end

end