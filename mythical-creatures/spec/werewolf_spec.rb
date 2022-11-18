require 'rspec'
require '../lib/werewolf'

RSpec.describe Werewolf do
  it 'has a name' do
    werewolf = Werewolf.new('David')
    expect(werewolf.name).to eq('David')
  end

  it 'has a location' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.location).to eq('London')
  end

  it 'is by default human' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true
  end

  it 'when starting as a human, changing makes it turn into a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    werewolf.change!
    expect(werewolf.wolf?).to be true
    expect(werewolf.human?).to be false
  end

  it 'when starting as a human, changing again makes it be human again' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true

    werewolf.change!

    expect(werewolf.human?).to be false

    werewolf.change!

    expect(werewolf.human?).to be true
  end

  it 'when starting as a werewolf, changing a second time makes it a werewolf' do
    werewolf = Werewolf.new('David', 'London')

    werewolf.change!
    expect(werewolf.wolf?).to be true

    werewolf.change!
    werewolf.change!

    expect(werewolf.wolf?).to be true
  end

  it 'is not hungry by default' do
    sparky = Werewolf.new("Sparky")
    expect(sparky.hungry?).to be false 
  end

  it 'becomes hungry after changing to a werewolf' do
    fido = Werewolf.new("Fido")
    fido.change!
    expect(fido.hungry?).to be true 
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end

    def consumed
      @status = :dead
    end

    def dead?
      @status == :dead ? true : false 
    end
  end

  it 'consumes a victim' do
    catman = Victim.new
    doggy = Werewolf.new("Doggy")
    doggy.change!
    doggy.eat(catman)

    expect(catman.dead?).to be true
    expect(doggy.hungry?).to be false 
  end

  it 'cannot consume a victim if it is in human form' do
    catman = Victim.new
    doggy = Werewolf.new("Doggy")
    doggy.eat(catman)
    expect(catman.dead?).to be false 

  end

  it 'a werewolf that has consumed a human being is no longer hungry' do
    catman = Victim.new
    doggy = Werewolf.new("Doggy")
    doggy.change!
    doggy.eat(catman)

    expect(doggy.hungry?).to be false 
  end

  it 'a werewolf who has consumed a victim makes the victim dead' do
    catman = Victim.new
    doggy = Werewolf.new("Doggy")
    doggy.change!
    doggy.eat(catman)

    expect(catman.dead?).to be true
    expect(doggy.hungry?).to be false   
  end

end
