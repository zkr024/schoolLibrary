require_relative './person'

class Teacher < Person
  attr_accessor :profession, :specialization

  def initialize(specialization, age, name = 'Unknown', profession = 'Teacher')
    super(age, name)
    @specialization = specialization
    @profession = profession
  end

  def can_use_services?
    true
  end
end
