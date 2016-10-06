class Group

attr_accessor :group_size, :course, :who_to_group, :first_shuffle, :random_student_groups, :list_group_names_only

@@all = []
@@group_history = []

# @@group_history_2 = []
# @@group_history_3 = []
# @@group_history_more = []

def initialize()
  @group_size = group_size
  @course = course
  @@all << self
end

def who_to_group
  @course.studentify # USE THIS INSTEAD
end

def first_shuffle
#  array_of_groups = []
  random_students = who_to_group.shuffle #random_students = who_to_group.shuffle
 # who_to_group.shuffle.each_slice(3) {|x| x.each {|y| q << y.name}}
end

def random_student_groups
    random_student_groups = []
    first_shuffle.each_slice(@group_size) {|x| random_student_groups<< x}
    #binding.pry
    random_student_groups
end 

def list_group_names_only
  random_student_groups.map {|group_of_objects| group_of_objects.map {|each_object| each_object.name }}
end

# def shuffle_runner(group: )
#   @group = group
#   group.list_group_names_only
# end

# def worked_together
#   my_group = #.select {|group_of_studs| group_of_studs.include?(self)}

# end 


# def worked_together
#   previous_groups = []
#   shuffles.each do |sub_group|
#     check_group = sub_group
#     sub_group.each do |student_object|
#       previous_groups << student_object.student_group_history & check_group
#     end
#   end
#   previous_groups
# end

# def re_shuffles

#   never_worked_together = shuffles - worked_together #an array of arrays of uniqe groups
#   never_worked_together.map do | valid_groups|
#     if valid_groups.length < @group_size
#       sample_student = worked_together.flatten!.sample(1)
#       worked_together.delete(sample_student)
#       valid_groups << sample_student
#     end
#   end

# end

# def add_to_student_history
#   self.shuffles.each do |sub_group|
#     sub_group.each do |student_object|
#       student_object.student_group_history << sub_group
#     end
#   end
# end

#make a hash of student.name => times.worked_together # 

# def add_to_student_history
#   self.shuffles.each do |sub_group|
#     sub_group.each do |student_name|
#
#       Student.all.each do |student_object|
#         if student_object.name == student_name
#           student_object.student_group_history << sub_group
#         end
#       end
#     end
#   end
# end


# if @group_size == 2
#   @@group_history_2 << array_of_groups
# elsif @group_size == 3
#   @@group_history_3 << array_of_groups
# else
#   @@group_history_more << array_of_groups
#end
# @@group_history = array_of_groups






  def self.group_history
    @@group_history
  end

def self.all
  @@all
end

end

#

## def REMAINDERS

#who_to_group.each_with_index(@group_size) {|person, index|  person = index}
#  if student_ids_array.length % @group_size == 1
#   lone_student = array_of_groups.pop
#   array_of_groups.first << lone_student
#   array_of_groups.first.flatten!
# elsif
#   student_ids_array.length % @group_size == 2
#   lone_student = array_of_groups.pop
#   array_of_groups.first << lone_student
#   array_of_groups.first.flatten!
#   new_group_size = array_of_groups.first.length / 2
#   array_of_groups.first.each_slice(new_group_size) {|new_group| array_of_groups << new_group}
#   array_of_groups.shift
#   #binding.pry
#  end


# if group_size <5 then:
# access student history through groups
# check current group against student history(@course.student_objects.groups)
# if intersection of that
# stud_groups.each ? array_of_groups.each
# have student name reference its object
# get that object's group history
# check that history against the other objects it shares an array with
