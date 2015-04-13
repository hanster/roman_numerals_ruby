class RomanNumeral

  def toRoman number
    result = ''

    while (number > 0) do
      if number >= 10
        result += 'X'
        number = number - 10
      elsif number >= 5
        result += "V"
        number = number - 5
      else
        result += "I"
        number = number - 1
      end
    end
    return result
  end
end

describe RomanNumeral do

  before(:each) do
    @converter = RomanNumeral.new
  end

  it 'converts 1 to I' do
    result = @converter.toRoman(1)
    expect(result).to eq('I')
  end

  it 'converts 2 to II' do 
    result = @converter.toRoman(2)
    expect(result).to eq('II')
  end

  it 'converts 3 to III' do
    result = @converter.toRoman(3)
    expect(result).to eq('III')
  end

  it 'converts 5 to V' do
    result = @converter.toRoman(5)
    expect(result).to eq('V')
  end

  it 'converts 10 to X' do
    result = @converter.toRoman(10)
    expect(result).to eq ('X')
  end
end
