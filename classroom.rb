class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  attr_accessor :label, :students

  def add_students(student)
    @students.push(student)
    student.classroom = self
  end
end
