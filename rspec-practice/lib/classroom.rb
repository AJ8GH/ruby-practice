class ClassRoom
  attr_accessor :students

  def initialize(students)
    @students = students
  end

  def list_students
    students.map(&:name).join(',')
  end
end
