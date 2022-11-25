class Direwolf
  attr_accessor :name, :home, :size, :starks_to_protect, :safety_status

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @safety_status = false
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.count < 2 
      @starks_to_protect << stark  
      stark.safety_status = true 
    else 
      nil
    end
  end

  def safe?
    @safety_status
  end

  def hunts_white_walkers?
    @starks_to_protect.count == 0 ? true : false
  end

  def leaves(stark)
    starks_to_protect.clear
    stark.safety_status = false 
    return stark
  end
end


class Stark
  attr_accessor :name, :location, :safety_status

  def initialize(name, location = "Winterfell", safety_status = false)
    @name = name 
    @location = location
    @safety_status = safety_status
  end

  def safe?
    @safety_status
  end

  def house_words 
    "Winter is Coming"
  end

end