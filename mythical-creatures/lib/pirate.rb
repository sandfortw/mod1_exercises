class Pirate
  attr_accessor :name, :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = 0
  end

  def job
    @job
  end

  def cursed?
    @cursed < 3 ? false : true 
  end

  def commit_heinous_act
    @cursed += 1
  end
end
