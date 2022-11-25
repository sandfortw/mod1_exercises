class Centaur
attr_accessor :name, :breed

  def initialize(name, breed, cranky = 0, standing = true, laying = false)
    @name = name
    @breed = breed
    @cranky = cranky
    @standing = standing
    @laying = laying 
  end

  def shoot
    if @cranky < 3 && @laying == false 
      @cranky += 1
      return 'Twang!!!'
    else
      return 'NO!' 
    end
  end

  def run
    return 'NO!' unless @laying == false
      @cranky += 1  
      'Clop clop clop clop!'
  end

  def cranky?
    @cranky >= 3 
  end

  def standing?
    @standing
  end

  def laying? 
    @laying
  end

  def sleep
    return 'NO!' unless @standing == false
      @cranky = 0
       'zzz'
  end

  def drink_potion
    if @standing == true && @cranky != 0
      @cranky = 0
    elsif @cranky == 0
      return 'I feel ill...'
    else
      return 'NO!'
    end
  end


  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

end
