class Parrot
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end

  def name
    @attributes.fetch(:name)
  end

  def sound
    'Squawk!'
  end

  def known_words
    @attributes.fetch(:known_words)
  end
end
