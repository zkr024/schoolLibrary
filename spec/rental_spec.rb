require_relative '../school/rental'
require_relative '../school/book'
require_relative '../school/person'

describe Rental do
  before :each do
    person = Person.new(17, 'Jennifer')
    book = Book.new('Ready Player One', 'Ernest Cline')
    @rental = Rental.new('2022/07/01', book, person)
  end

  describe '#new' do
    it 'Returns a new Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end

    it 'Throws an error when less than 3 arguments are given' do
      expect { Rental.new }.to raise_exception ArgumentError
    end

    it 'Returns rentals date' do
      expect(@rental.date).to eq('2022/07/01')
    end

    it 'Returns the book name' do
      expect(@rental.book.title).to eq('Ready Player One')
    end

    it 'Returns renters name' do
      expect(@rental.person.name).to eq('Jennifer')
    end
  end
end
