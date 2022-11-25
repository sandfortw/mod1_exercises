class MadLib

  def initialize
    @verb = nil
    @noun = nil
    @adjective = nil
    @adverb = nil
  end

  def noun(input)
    @noun = input
  end

  def verb(input)
    @verb = input
  end

  def adjective(input)
    @adjective = input
  end

  def adverb(input)
    @adverb = input
  end

  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end
end