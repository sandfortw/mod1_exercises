class Ogre
attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0 
    @notices_ogre = false
    @encounter_counter = 0 
  end

  def encounter(human)
    human.encounter_ogre
    @encounter_counter += 1
    @encounter_counter % 3 == 0 ? @swings +=1 : nil
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.wakes
  end

end

class Human
  attr_reader :name, :encounter_counter

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter_ogre 
    @encounter_counter += 1 
    @encounter_counter == 6 ? @knocked_out = true : nil
  end

  def knocked_out?
    @knocked_out
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      @notices_ogre = true 
      return true
    else 
      @notices_ogre = false
      return false 
    end
  end

  def wakes
    @knocked_out = false 
  end


  
end