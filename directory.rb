def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great student(s)"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp
  
  while !name.empty? do
    
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} student(s)"

    name = gets.chomp
  end

  students
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
