class RomanNumeral

  def toRoman number
    result = ''

    return 'I'*number
  end
end

describe RomanNumeral do

  it 'converts 1 to I' do
    converter = RomanNumeral.new
    result = converter.toRoman(1)
    expect(result).to eq('I')
  end

  it 'converts 2 to II' do 
    converter = RomanNumeral.new
    result = converter.toRoman(2)
    expect(result).to eq('II')
  end

  it 'converts 3 to III' do
    converter = RomanNumeral.new
    result = converter.toRoman(3)
    expect(result).to eq('III')
  end

end
