def interactive_menu
	students = []
	loop do 
		puts "1. Input the students"
		puts '2. Show the students'
		puts '9. Exit'
		selection = gets.chomp
	case selection
	when '1'
		students = input_students
	when '2'
		show_students(students)
	when '9'
		exit
	else
		puts "I don't understand your selection.
		Please try again"
	end
	end
end

def print_header
  puts "Please input student names"
end

def print(students)
  students.each_with_index do |student, i|
    puts_centered "#{i + 1}\ "  "#{student[:name]} (#{student[:cohort]} Cohort)"
  end
end



def print_footer(names)
	if names.length == 1
		puts_centered "There is 1 student"
	elsif names.length == 0
		puts_centered "Oh dear, there are no students"
	else   
	  puts_centered "Now, there are #{names.length} students"
	end
end	

def puts_centered(string)
	puts string.center(150)
end

def print_sorted(names)	
	names.select {|name| names.include?("A") }.each do |name|
		if name == true
		puts_centered "These names include the letter A:"	
		puts_centered name
		end
	end
end

def print_scaled(names)
	names.select {|name| names.length}.each do |name|
		if name.length < 12
			puts_centered "These are some short names"
			puts name
		else 
			puts_centered "They all have long names"
		end
end	
end

def input_students
	puts "Please enter the names of the current students"
	sleep(0.1)
	puts "To finish, just hit return twice"
	students = [] 
	name = gets.chomp.split(' ').map(&:capitalize).join(' ')
	while !name.empty? do
		# students << {name: name, cohort: :November}
		if students.length == 0
			puts "Now we have 1 student"
		else
		puts "Now we have #{students.length + 1} students"
		end	
		hobby = input_hobbies
		p "Enter another student or press enter to finish"
		students << {name: name, cohort: :November, hobby: hobby}
		name = gets.chomp.split(' ').map(&:capitalize).join(' ')
	end
	students
end

def input_hobbies
	puts "what do they like to do at the weekend?"
	gets.chomp
	end

def show_students(students)
	print_header
	print(students)
	print_sorted(students)
	print_scaled(students)
	print_footer(students)
end


print(interactive_menu)
