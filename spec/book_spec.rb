require_relative '../school/book'
require_relative '../school/rental'
require_relative '../school/person'

describe Book do
  before :each do
    @book = Book.new('Ready Player One', 'Ernest Cline')
  end

  describe '#new' do
    it 'Returns a new Book object' do
      expect(@book).to be_an_instance_of Book
    end

    it 'Throws an error when given less than 2 arguments' do
      expect { Book.new 'Armada' }.to raise_exception ArgumentError
    end

    it 'Shows an empty array when no rental were added' do
      expect(@book.rentals).to be_empty
    end

    it 'Adds a new rental data' do
      person = Person.new('35', 'Thomas')
      @book.add_rental(person, '2022/06/29')
      expect(@book.rentals[0].person.name).to eq('Thomas')
    end
  end
end
