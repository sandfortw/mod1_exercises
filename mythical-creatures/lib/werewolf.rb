class Werewolf
attr_accessor :name, :location, :human, :hungry

  def initialize(name, location = "London", human = true, hungry = false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry 
  end

  def human? 
    @human
  end

  def wolf?
    !@human
  end

  def hungry?
    @hungry
  end

  def change!
    if @human == true
      @human = false
      @hungry = true
    else
      @human = true
      @hungry = false 
    end
  end

  def eat(victim)
    if @human == false
      @hungry = false 
      victim.consumed
    else
      puts "You can't eat a victim while human."
    end
  end


end

