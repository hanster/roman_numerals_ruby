class RomanNumeral

  def toRoman number
    
    numerals = Hash[1000 => 'M',
                    900 => 'CM',
                    500 => 'D',
                    400 => 'CD',
                    100 => 'C',
                    90 => 'XC',
                    50 => 'L',
                    40 => 'XL',
                    10 => 'X',
                    9 => 'IX',
                    5 => 'V',
                    4 => 'IV',
                    1 => 'I']
    result = ''

    numerals.each do |key, value|
      while number >= key
        result += value
        number = number - key
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

  it 'converts 4 to IV' do
    result = @converter.toRoman(4)
    expect(result).to eq ('IV')
  end

  it 'converts 14 to XIV' do 
    result = @converter.toRoman(14)
    expect(result).to eq ('XIV')
  end

  it 'converts 9 to IX' do
    result = @converter.toRoman(9)
    expect(result).to eq('IX')
  end

  it 'converts 66 to LXVI' do
    result = @converter.toRoman(66)
    expect(result).to eq('LXVI')
  end

  it 'converts 100 to C' do
    result = @converter.toRoman(100)
    expect(result).to eq('C')
  end

  it 'converts 1000 to M' do
    result = @converter.toRoman(1000)
    expect(result).to eq('M')
  end

  it 'converts 90 to XC' do
    result = @converter.toRoman(90)
    expect(result).to eq('XC')
  end

  it 'converts 1066 to MLXVI' do
    result = @converter.toRoman(1066)
    expect(result).to eq('MLXVI')
  end

  it 'converts 1989 to MCMLXXXIX' do
    result = @converter.toRoman(1989)
    expect(result).to eq('MCMLXXXIX')
  end

  it 'converts 40 to XL' do
    result = @converter.toRoman(40)
    expect(result).to eq('XL')
  end

  it 'converts 500 to D' do 
    result = @converter.toRoman(500)
    expect(result).to eq('D')
  end

  it 'converts 400 to CD' do
    result = @converter.toRoman(400)
    expect(result).to eq('CD')
  end
end
