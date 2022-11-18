class Werewolf
attr_accessor :name, :location, :human, :hungry

  def initialize(name, location = "London", human = true, hungry = false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry 
  end

  def human? 
    @human == true ? true : false
  end

  def wolf?
    @human == true ? false : true 
  end

  def hungry?
    @hungry == false ? false : true
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

