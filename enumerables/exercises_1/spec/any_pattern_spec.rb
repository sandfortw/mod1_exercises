RSpec.describe 'Any Pattern Test' do

  it 'has at least one zero' do
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    expect(has_zero).to eq(true)
  end

  it 'does not have any zeros' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    expect(has_zero).to eq(false)
  end

  it 'has at least one alice' do
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    
    names.each {|name| has_alice = true if name == "Alice"}
    expect(has_alice).to eq(true)
  end

  it 'no alices' do
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    has_alice = false

    names.each {|name| has_alice = true if has_alice == "Alice" }
    expect(has_alice).to eq(false)
  end

  it 'has a multi word phrase' do
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    # Your code goes here
    has_multi_word_phrase = false
    phrases.each {|string| has_multi_word_phrase = true if string.include?(" ") || string.chop.match(/[.?!]/)}
    expect(has_multi_word_phrase).to eq(true)
  end

  it 'has no monkeys' do
    animals = ["elephant", "hippo", "jaguar", "python"]
    has_monkeys = false
    animals.each {|animal| has_monkeys = true if animal.downcase.include?("monkey")}
    expect(has_monkeys).to eq(false)
  end

  it 'has no multiples of five' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of_5 = false
    numbers.each {|number| multiples_of_5 = true if number % 5 == 0}
    expect(multiples_of_5).to eq(false)
  end
end

