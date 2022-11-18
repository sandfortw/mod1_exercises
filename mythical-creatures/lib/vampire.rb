class Vampire
attr_accessor :name, :pet

  def initialize(name = "Dracula", pet = "bat")
    @name = name
    @pet = pet
    @thirst = true
  end

  def thirsty
    @thirst == true ? true : false
  end

  def drink 
    @thirst = false 
  end

end