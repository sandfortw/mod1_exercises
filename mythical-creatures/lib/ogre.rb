class Ogre
attr_accessor :name, :location, :swings, :encounter_counter

  def initialize(name, location = 'Swamp', notices_ogre = false, swings = 0, encounter_counter = 0)
    @name = name
    @location = location
    @swings = swings 
    @notices_ogre = notices_ogre
    @encounter_counter = encounter_counter
    
  end

  def home
    @location
  end


  def encounter(human)
    human.encounter_ogre
    @encounter_counter += 1
    if @encounter_counter % 3 == 0
      @swings +=1
    end
  end

  def swing_at(human)
    @swings += 1
  end

def apologize(human)
  human.wakes
end




end

class Human
  attr_accessor :name, :encounter_counter, :knocked_out

  def initialize(name = 'Jane',  encounter_counter = 0, knocked_out = false)
    @name = name
    @encounter_counter = encounter_counter
    @knocked_out = knocked_out
  end

  def encounter_ogre 
    @encounter_counter += 1 
    # if @encounter_counter == 6
    #   @knocked_out = true
    # end
  end

  def knocked_out?
    @knocked_out == true ? true : false
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