require_relative '../school/student'
require_relative '../school/teacher'
require_relative '../menu/valid'

class AddPerson
  def add_person(person)
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selection = gets.chomp
    if valid_person?(selection)
      case selection
      when '1'
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp
        print 'Classroom: '
        classroom = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        loop do
          break if permission.capitalize == 'N' || permission.capitalize == 'Y'

          puts "#{permission} is not a valid entry, try again"
          permission = gets.chomp
        end
        person_data = Student.new(classroom, age, name)
      when '2'
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp
        print 'Specialization: '
        specialization = gets.chomp
        person_data = Teacher.new(specialization, age, name)
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
    person << person_data
    puts 'Person created successfully'
  end
end
