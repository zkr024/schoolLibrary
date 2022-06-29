require_relative '../correctName/nameable'

describe Nameable do
  before :each do
    @nameable = Nameable.new
  end

  describe '#new' do
    it 'Returns a new Nameable object' do
      expect(@nameable).to be_an_instance_of Nameable
    end

    it 'must be implemented in a subclass' do
      expect { @nameable.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
