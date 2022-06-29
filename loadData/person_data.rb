require 'json'
require_relative '../school/student'
require_relative '../school/teacher'

def person_data(person)
  File.write('./data/person.json', JSON.pretty_generate([])) unless File.exist?('./data/person.json')
  @file_person = File.read('./data/person.json')
  return if @file_person.empty?

  data_person = JSON.parse(@file_person)
  data_person.map do |value|
    name = value['name']
    age = value['age']
    if value['classroom'].nil?
      specialization = value['specialization']
      person_data = Teacher.new(specialization, age, name)
    else
      classroom = value['classroom']
      person_data = Student.new(classroom, age, name)
    end
    person_data.id = value['id']
    person << person_data
  end
end
