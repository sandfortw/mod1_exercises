class Wizard
  attr_accessor :name, :bearded 

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @rested = 0
  end

  def bearded?
    @bearded == true ? true : false
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @rested < 3 ? true : false
  end

  def cast
    @rested +=1
    return "MAGIC MISSILE"
  end

end
