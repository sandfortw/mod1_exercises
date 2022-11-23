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
    @statues
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
    @name
  end

  def stoned?
    @stoned
  end
end
