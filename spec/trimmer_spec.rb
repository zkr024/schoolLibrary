require_relative '../correctName/trimmer'
require_relative '../correctName/capitalize'
require_relative '../school/person'

describe TrimmerDecorator do
  before :each do
    person = Person.new(17, 'theLongestNameEver')
    capitalize = CapitalizeDecorator.new(person)
    @trimmer = TrimmerDecorator.new(capitalize)
  end

  describe '#new' do
    it 'Returns a new TrimmerDecorator object' do
      expect(@trimmer).to be_an_instance_of TrimmerDecorator
    end

    it 'Throws an error when no arguments are given' do
      expect { TrimmerDecorator.new }.to raise_exception ArgumentError
    end

    it 'return a max lenght name of 10' do
      expect(@trimmer.correct_name).to eq('Thelongest')
    end

    it 'Remove blanks at the beginning and the end of the name' do
      person = Person.new(35, '  mike  ')
      trimmer = TrimmerDecorator.new(person)
      expect(trimmer.correct_name).to eq('mike')
    end
  end
end
