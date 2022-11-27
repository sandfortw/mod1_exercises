require 'pry'

class Wallet

  def initialize
    @wallet = []
    @cents = 0
    @coins_def = {
      penny: 1,
      nickel: 5,
      dime: 10,
      quarter: 25
    }
  end

  def <<(money)
    @wallet << money
    
    @cents = @wallet.each
   
  end

  def cents
    @cents
  end
  
end

