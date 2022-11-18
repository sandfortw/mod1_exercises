require "pry"
class Medusa
attr_accessor :name

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned
    @statues << victim
  end

  def statues
    return @statues
  end
end

class Person
  
  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned
    @stoned = true
  end

  def name
    return @name
  end

  def stoned?
    @stoned == true ? true : false 
  end
end
