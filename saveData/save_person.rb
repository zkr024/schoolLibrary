require 'json'

def save_person(person)
  person_data = []
  person.map do |val|
    info = {}
    info['name'] = val.name
    info['age'] = val.age
    info['id'] = val.id
    info['profession'] = val.profession
    if val.profession == 'Teacher'
      info['specialization'] = val.specialization
    else
      info['classroom'] = val.classroom
    end
    person_data << info
  end
  File.write('./data/person.json', JSON.pretty_generate(person_data))
end
