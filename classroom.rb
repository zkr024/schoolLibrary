class Classroom
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(students)
    @students.push(students)
    student.classroom = self
  end
end
