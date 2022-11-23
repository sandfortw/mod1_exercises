class Vampire
attr_accessor :name, :pet

  def initialize(name = "Dracula", pet = "bat")
    @name = name
    @pet = pet
    @thirst = true
  end

  def thirsty
    @thirst
  end

  def drink 
    @thirst = false 
  end

end