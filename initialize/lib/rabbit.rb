class Rabbit
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end

  def name
    if @attributes.fetch(:num_syllables) == 2
      return  "#{@attributes.fetch(:name)} Rabbit"
    else
      @attributes.fetch(:name)
    end
  end

  end

