RSpec.describe 'All Pattern' do
  it 'all zeros' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeros' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false if number.zero? == false
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each {|word| all_gone = false unless word.downcase.include?("gone")}
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = true
    words.each {|word| all_gone = false if word.downcase.include?("gone") == false}
  
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = true 
    strings.each {|string| all_empty = false unless string == ""}
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    all_empty = true
    strings.each {|string| all_empty = false unless string == "" }
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = true
    words.each{|word| all_caps = false unless word.upcase == word}
    expect(all_caps).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    # Your code goes here
    all_lies = true
    lies.each {|lie| all_lies = false unless lie == false}
    expect(all_lies).to eq(true)
  end

  it 'all multiples of seven' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    all_multiples_of_7 = true
    numbers.each {|number| all_multiples_of_7 = false unless number % 7 == 0} 
    expect(all_multiples_of_7).to eq(true)
  end

  it 'not all 3 digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    all_3_digits = true

    numbers.each {|number| all_3_digits = false unless number.to_s.length == 3}
    expect(all_3_digits).to eq(false)
  end

  it 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = true

    words.each {|word| all_4_letters = false unless word.length == 4}
    expect(all_4_letters).to eq(true)
  end
end
