require_relative '../school/teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new('Math', 41, 'Steven')
  end

  describe '#new' do
    it 'Returns a new Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end

    it 'Throws an error when less than 2 arguments are given' do
      expect { Teacher.new }.to raise_exception ArgumentError
    end

    it 'Shows name = unknown when just 2 arguments are given' do
      teacher2 = Teacher.new('Science', 50)
      expect(teacher2.name).to eq('Unknown')
    end

    it 'returns true when using the method can_use_services?' do
      expect(@teacher.can_use_services?).to be true
    end

    it 'returns teacher when checking the profession' do
      expect(@teacher.profession).to eq('Teacher')
    end
  end
end
