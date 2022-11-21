class Narwhal
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end

  def name
    @attributes.fetch(:name)
  end

  def weight
    @attributes.fetch(:weight)
  end

  def cute?
    @attributes.fetch(:cute)
  end
  
end
