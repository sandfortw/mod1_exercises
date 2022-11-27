require 'pry'
class RollCall

  def initialize
    @array = []
  end

  def <<(name)
    @array << name
  end

  def longest_name
    # @array.sort_by(&:length).last (THIS IS HOW TABNINE COMPLETED THIS)
    @array.sort_by {|name| name.length}.last
  end


end