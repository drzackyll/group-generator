require 'Pry'
class Course

attr_accessor :student_names, :student_id_name_hash, :student_objects, :reset_students
attr_reader :name, :instructors

@@all = []
  def initialize(name:, students:)
    @name = name
    #web or ios 
    #@students = students
    @students = students
    i = 0
    # stud_objects = students.each_with_object({}) {|student, hash| hash[(i+=1)] = (Student.new(name: student)).name}

    @student_objects = students.map {|student| Student.new(name: student)}
    student_objects.map {|student| student.course = self}
    #binding.pry
    self.reset_students
    @@all << self
    #collects all the flatiron courses ever
    #@instructors = instructors
  end

  def reset_students
    array_of_students = student_objects.each_with_object([]) {|student, array| array << student.name} 
    array_of_students.each do |student_name|
      student_objects.each {|one_student| one_student.student_group_history[student_name] = 0}
    end 
  end


  def self.all
    @@all
  end

end
