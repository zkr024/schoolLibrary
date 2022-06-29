require_relative '../school/person'
require_relative '../school/rental'

describe Person do
  before :each do
    @person = Person.new(17, 'Jennifer')
    @person.parent_permission = false
  end

  describe '#new' do
    it 'Returns a new Person object' do
      expect(@person).to be_an_instance_of Person
    end

    it 'Throws an error when no arguments are given' do
      expect { Person.new }.to raise_exception ArgumentError
    end

    it 'Shows an empty array when no rentals were added' do
      expect(@person.rentals).to be_empty
    end

    it 'Returns false since no permission was given' do
      expect(@person.parent_permission).to be false
    end

    it 'Returns false since no permission was given' do
      expect(@person.correct_name).to eq('Jennifer')
    end
  end
end
