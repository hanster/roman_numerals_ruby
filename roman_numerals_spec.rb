class RomanNumeral

  def toRoman number
    'I'
  end
end

describe RomanNumeral do

  it 'converts 1 to I' do
    converter = RomanNumeral.new
    result = converter.toRoman(1)
    expect(result).to eq('I')
  end
end
