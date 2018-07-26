class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{@name}"
  end
end

class Student < Person

  def learn
    return "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object!"
  end

end

nadia = Instructor.new('Nadia')
nadia.greeting

chris = Student.new('Chris')
chris.greeting

# nadia.learn
# chris.teach
# These won't work because instructors and students are inherited from person. if we placed the method in person, then it would work.
