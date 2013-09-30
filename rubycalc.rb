def prompt()
 print "> "
end 

puts "Enter in first number: \n"
prompt; first_num = STDIN.gets.chomp()

puts "What property do you want to use?\n"
puts "1: Addition\n"
puts "2: Subtraction\n"
puts "3: Multiplication\n"
puts "4: Division\n"
prompt; property = STDIN.gets.chomp()

puts "What is the second number?\n"
prompt; second_num = STDIN.gets.chomp()

if property == "1"
puts "\n"
prompt; puts first_num.to_i + second_num.to_i

elsif property == "2"
puts "\n"
prompt; puts first_num.to_i - second_num.to_i

elsif property == "3"
puts "\n"
prompt; puts first_num.to_i * second_num.to_i

elsif property == "4"
puts "\n"
prompt; puts first_num.to_i / second_num.to_i

else 
   puts "INVALID"
end 
 

