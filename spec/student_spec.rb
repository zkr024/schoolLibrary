require_relative '../school/student'

describe Student do
  before :each do
    @student = Student.new('11', 14, 'Ana')
  end

  describe '#new' do
    it 'Returns a new Student object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'Throws an error when less than 2 arguments are given' do
      expect { Student.new }.to raise_exception ArgumentError
    end

    it 'Shows name = unknown when just 2 arguments are given' do
      student2 = Student.new('8b', 12)
      expect(student2.name).to eq('Unknown')
    end

    it 'returns ¯\(ツ)/¯ when using the method play_hooky' do
      expect(@student.play_hooky).to eq('¯\(ツ)/¯')
    end

    it 'return student when checking the profession' do
      expect(@student.profession).to eq('Student')
    end
  end
end
