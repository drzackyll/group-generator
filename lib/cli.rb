require 'Pry'
class CommandLineInterface
  
#   def run 
#   #course_name = ""
#   # students_array = []
#   # # puts "What course are you working for?"
#   # # course_name = gets.chomp
#   # # puts "Please provide a formatted array of all students"
#   # # students_array << gets
#   # # group_size = 0
#   # # classroom = Course.new(name: course_name, students: students_array)
#   # puts "How many students per group?"
#   # group_size = gets.chomp.to_i
#   # grouper = Group.new(number_of_students: group_size, course: classroom)
#   # #p grouper
#   new_groups = grouper.shuffles
#   group_names = new_groups.each {|x| x.each {|y| y.name}}
#   binding.pry
#   p group_names
# end
attr_accessor :group
attr_reader :group_instance

def get_course_name 
  course_name = ""
  puts "What course are you working for?"
  course_name = gets
end 

def get_students_array
  students_array = []
  puts "Please provide a formatted array of all students"
  students_array << gets
  return students_array
end 

def make_a_course
  classroom = Course.new
  classroom.name = get_course_name
  classroom.students = get_students_array
  return classroom
end 

def populate_course
  doing = make_a_course.studentify
  #doing.course_the_students
  #doing.student_objects
  binding.pry
  return doing
end 

def see_my_students
  populate_course.studentify.each {|student| print "#{student}" 
  print "#{student.name}"
  print "#{student.course}"}
  binding.pry
end 


def take_all_inputs
   make_group_instance
end 

def get_group_size
  puts "How many students per group?"
  group_size = gets.to_i
end 

def make_group_instance
  group_instance = Group.new
  group_instance.group_size = get_group_size
  group_instance.course = populate_course
  return group_instance
end 

# def see_group_instance 
#   make_group_instance


# def shuffle_runner(group: )
#   @group = group
#   group.first_shuffle
#   no = yes.random_student_groups
#   maybe = no.list_group_names_only
#   maybe 
# end


def shuffle_runner
   take_all_inputs.random_student_groups
  #binding.pry 

end

# def look_at_shuffle
#   look_at_shuffle = [] 
#   shuffle_runner(group: take_all_inputs).each {|x| look_at_shuffle << x}
#   look_at_shuffle
# end 

# def shuffled_names
#   #binding.pry
#   look_at_shuffle.map {|group_of_objects| group_of_objects.map {|each_object| each_object.name }}
# end 

def run 
  shuffle_runner
  #binding.pry
end 
end 


  
  # def new_course
  #   create_course
  # end
  
# def create_course 
#   Course.new 
#   course.students = create_students
#   course.instructors = create_instructors
#   course
# end

# def create_instructors
#   #user input? iterate through
#   Instructor.new(name:)
# end 

# def create_students
#   #user input? iterate through
#   Student.new (name:)
# end 
# #
# def operate_matchmaking(course)
#   # print "How many people should be in each group? >> "
#   # group_size = gets.chomp.to_i
#   #
#   # matchmaker = Matchmaker.new(course: course, group_size: group_size)
#   #
#   # matchmaker.matchmake
#
# end
#
# def parse_student_groups(groups:)
#   puts "\n"
#   groups.each_with_index do |group, i|
#     puts "Group #{i + 1}"
#     puts "Instructor: #{group.instructor.name}"
#     puts "------------------"
#     group.students.each do |student|
#       puts student.name
#     end
#     puts ""
#   end
# end
    #
# def start
#   course_name = ""
#   students_array = []
#   puts "What course are you working for?"
#   course_name = gets.chomp
#   puts "Please provide a formatted array of all students"
#   students_array << gets
#   group_size = 0
#   classroom = Course.new(name: course_name, students: students_array)
#   puts "How many students per group?"
#   group_size = gets.chomp.to_i
#   grouper = Group.new(number_of_students: group_size, course: classroom)
#   #p grouper
#   new_groups = grouper.shuffles
#   group_names = new_groups.each {|x| x.each {|y| y.name}}
#   binding.pry
#   p group_names
# end
#

#start
