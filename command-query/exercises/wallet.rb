require 'pry'

class Wallet

  def initialize
    @wallet = Hash[]
    @cents = @wallet.values.sum
  end

  def <<(money)
      if money == :penny
        @wallet[money] += 1
      elsif money == :nickel
        @wallet[money] += 1
      elsif money == :dime
        @wallet[money] += 1
      elsif money == :quarter 
        @wallet[money] += 1
      else
        nil
      end
      binding.pry
  end

  # def take(money1, money2 = nil)
  #   palm = []

  #   @wallet.take_while do |coin|
  #     palm << coin if money1 == coin
  #   end
  #   binding.pry
  #   palm = palm.delete_at(0)
  #   binding.pry
  #   palm.each do |coin|
  #     @wallet << coin
  #   end

  #   @wallet.each do |coin|
  #     palm << coin if money2 == coin
  #   end

  #   palm = palm.delete_at(0)
  #   palm.each do |coin|
  #     @wallet << coin
  #   end
    
  #   @wallet.each do |coin|
  #     if coin == :penny
  #       @cents -= 1
  #     elsif coin == :nickel
  #       @cents -= 5
  #     elsif coin == :dime
  #       @cents -= 10
  #     elsif coin == :quarter
  #       @cents -= 25
  #     else
  #       nil
  #     end
  #   end

  # end

  # def cents
  #   @cents
  # end
  
end

