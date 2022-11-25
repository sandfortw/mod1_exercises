class EscapeCharacters

  def initialize
  end

  def quote(quotation)
    "\"#{quotation}\""
  end
end

something = EscapeCharacters.new

puts something.quote("My stars!")