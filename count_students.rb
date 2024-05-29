# https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/description/

class CountStudents
  def num_of_students_unable_to_eat(students, sandwiches)
    while students.include?(sandwiches.first)
      if students.first == sandwiches.first
          students.shift
          sandwiches.shift
      else
         students.push(students.shift)
          
      end
  end
    students.length
  end
end

# CountStudents.new.num_of_students_unable_to_eat([1,1,0,0], [0,1,0,1]) # 0

# "students"
# [1, 1, 0, 0]
# "sanwiches"
# [0, 1, 0, 1]
# "students"
# [1, 0, 0, 1]
# "sanwiches"
# [0, 1, 0, 1]
# "students"
# [0, 0, 1, 1]
# "sanwiches"
# [0, 1, 0, 1]
# "students"
# [0, 1, 1]
# "sanwiches"
# [1, 0, 1]
# "students"
# [1, 1, 0]
# "sanwiches"
# [1, 0, 1]
# "students"
# [1, 0]
# "sanwiches"
# [0, 1]
# "students"
# [0, 1]
# "sanwiches"
# [0, 1]
# "students"
# [1]
# "sanwiches"
# [1]

# CountStudents.new.num_of_students_unable_to_eat([1,1,1,0,0,1], [1,0,0,0,1,1]) # 3

# "students"
# [1, 1, 1, 0, 0, 1]
# "sanwiches"
# [1, 0, 0, 0, 1, 1]
# "students"
# [1, 1, 0, 0, 1]
# "sanwiches"
# [0, 0, 0, 1, 1]
# "students"
# [1, 0, 0, 1, 1]
# "sanwiches"
# [0, 0, 0, 1, 1]
# "students"
# [0, 0, 1, 1, 1]
# "sanwiches"
# [0, 0, 0, 1, 1]
# "students"
# [0, 1, 1, 1]
# "sanwiches"
# [0, 0, 1, 1]
