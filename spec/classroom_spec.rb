require_relative '../school/classroom'
require_relative '../school/student'

describe Classroom do
  before :each do
    @classroom = Classroom.new('11')
  end

  describe '#new' do
    it 'Returns a new Classroom object' do
      expect(@classroom).to be_an_instance_of Classroom
    end

    it 'Throws an error when no arguments are given' do
      expect { Classroom.new }.to raise_exception ArgumentError
    end

    it 'Shows an empty array when no students were added' do
      expect(@classroom.students).to be_empty
    end

    it 'Adds a new student to the classroom' do
      student = Student.new(@classroom.label, 17, 'Dana')
      @classroom.add_student(student)
      expect(@classroom.students).not_to be_empty
    end
  end
end
