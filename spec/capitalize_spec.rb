require_relative '../correctName/capitalize'
require_relative '../school/person'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new(17, 'theLongestNameEver')
    @capitalize = CapitalizeDecorator.new(@person)
  end

  describe '#new' do
    it 'Returns a new CapitalizeDecorator object' do
      expect(@capitalize).to be_an_instance_of CapitalizeDecorator
    end

    it 'Throws an error when no arguments are given' do
      expect { CapitalizeDecorator.new }.to raise_exception ArgumentError
    end

    it 'Caps only the 1st letter of the name provided' do
      cap = 'Thelongestnameever'
      expect(@capitalize.correct_name).to eql(cap)
    end
  end
end
