def prompt
print "> "
end 

def last_room()
puts "A dollar is here. Lovely."
puts "Do you take the dollar, or do you suck?"
prompt; choice = gets.chomp

if choice::include? "take dollar" 
puts "YOU DIED!!!!!!!!!!!! How unfortunate."
	elsif choice::include? "I suck"
	puts "You do suck, but you win."
		else
		puts "Type something I understand."
		last_room() 
	end
end 

def between_room()
puts "There is a door in here. You could open it....."
prompt; achoice = gets.chomp

if achoice::include? "open door" 
last_room() 
	else
	puts "Type something I understand."
	between_room()
	end 
end 

def first_room()
puts "Salutations, user. How are you today? Hold that thought, I don't care."
puts "Your goal in this chamber is to reach the end, where there will be a\n"
puts "biased test of will."
puts "There are two rooms. One that leads to the left and one that leads to the right."
puts "Which one do you take?" 
prompt; one_choice = gets.chomp

if one_choice::include? "right"
puts "You fell into a black hole and got crushed by the intense gravity." 
	elsif one_choice::include? "left" 
	between_room()
		else
		puts "Type something I understand."
end
end
first_room()
