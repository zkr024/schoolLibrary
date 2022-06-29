require_relative '../correctName/decorator'
require_relative '../school/person'

describe Decorator do
  before :each do
    @person = Person.new(17, 'theLongestNameEver')
    @decorator = Decorator.new(@person)
  end

  describe '#new' do
    it 'Returns a new Decorator object' do
      expect(@decorator).to be_an_instance_of Decorator
    end

    it 'Throws an error when no arguments are given' do
      expect { Decorator.new }.to raise_exception ArgumentError
    end

    it 'Shows the name when using the method correct_name' do
      expect(@decorator.correct_name).to eq('theLongestNameEver')
    end
  end
end
