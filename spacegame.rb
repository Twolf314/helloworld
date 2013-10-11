class Game 

	def initialize(start) 
	   @quips = [ 
		"You are dead, well done, loser.", 
		"You're face is dead.", 
		"Way to screw yourself over.",
		"You are undeserving of your position, dead man.", 
		"I swear my cat can do better than you can, and he's dead.",
	   ] 
	   @start = start
	end 

	def prompt() 
	   print "> "
	end 

	def play() 
	   next_room = @start 

	   while true 
		puts "\n---------"
		room = method(next_room) 
		next_room = room.call 
	   end 
	end 

	def death() 
	   puts @quips[rand(@quips.length())] 
	   Process.exit(1) 
	end 

	def start_room() 
	   puts "Welcome, my idiotic friend, to The Gauntlet."
	   puts "In this game you will encounter many ridiculous things."
	   puts "It's funny how you mistook this for a pizza parlor, "
	   puts "as though a pizza parlor with quality pizza at all "
	   puts "is the size of an industrial complex......"
	   puts "\n" 
	   puts "Anyway, welcome to the Gauntlet again."
	   puts "You are simply to make decisions in this game."
	   puts "Depending on your gender, it shouldn't be that difficult, right?" 
	   puts "WRONG! Even with your gender as a male you will still be insanely hurt by the obstacles that are obviously rigged against you." 
	   puts "That makes it funnier for the people viewing you." 
	   puts "\n\n\n"
	   puts "-----------------------------------------------" 
	   puts "You are just getting into The Gauntlet and you notice already"
	   puts "that something is amiss. It takes awhile, but you finally"
	   puts "notice that this isn't a pizza parlor. Congratulations."
	   puts "First room is a room full of wrecking balls and you need"
	   puts "To get a grip on what you're going to do about it."
	   puts "Fifty wrecking balls are in a row, waving at around"
	   puts "900 miles an hour. There is a door at the end of the room."
	   puts "WHAT DO YOU DO, OH STUPID ONE?" 
		
	prompt() 
	action = gets.chomp() 

	if action.include? "under wrecking balls" 
	 puts "You moron, as though it was that easy." 
	 puts "Congratulations, once you tried to crawl under the"
	 puts "Wrecking balls, the chains holding them broke and"
	 puts "all of them fell onto you." 
	 puts "YOU LOSE!" 
	 return :death 

	elsif action.include? "around wrecking balls" 
	 puts "People are getting dumber by the generation."
	 puts "OH I KNOW, LETS GO AROUND IT!"
	 puts "Getting far in life, aren't we?"
	 puts "Idiot, you got yourself killed."
	 return :death 

	elsif action.include? "beg mercy" 
	 puts "Crying won't help." 
	 return :start_room  
 	
	elsif action.include? "run through"
	 puts "BWAHAHAHAHAHAHAHAHA!"
	 puts "You moron!"
	 puts "You finally make it to the other end of the door."
	 puts "Without your hands and feet."
	 puts "You have to wait for them to grow back now." 
	 return :second_room 

	else 
	 puts "SAY SOMETHING VALID, ILLITERATE PIECE OF SLIME!" 
	 return :start_room 
	end 
   end 
   
   def second_room() 
	puts "Congratulations, you're not an idiot."
	puts "Well you are, but not a huge idiot."
	puts "Now let's see where you are....."
	puts "You're with your friends in The Gauntlet."
	puts "You are all in a paper thin glass canoe rolling down a rapids."
	puts "You are heading towards a waterfall that's height is"
	puts "equivalent to the depth of the Mariana Trench." 
	puts "If you make any sudden movements the canoe will break."
	puts "And the water beneath you will turn to lava and kill you all." 
	puts "You see a giant box appear above your head, just floating there,"
	puts "even though it defies all laws of physics."
	puts "The box reads: open if you want to live." 
	puts "Your decision (this ought to be good.)?" 
	
	prompt() 
	second_action = gets.chomp() 

	if second_action.include? "open box" 
	 puts "I was hoping you would do that!" 
	 puts "Just then a bunch of hot tar comes out" 
	 puts "of a spicket in the box."
	 puts "You have third degree burns and the canoe collapses."
	 puts "I should'nt have to repeat what happens next."
	 return :death 

	elsif second_action.include? "panic" 
	puts "That gets you nowhere, but a collapsed canoe."
	puts "There is also glass in very uncomfortable spots."
	puts "You're not doing so well."
	return :death

	elsif second_action.include? "stay calm" 
	puts "Well done, now you are heading toward a waterfall."
	puts "Now another horrible situation awaits you........." 
	return :third_room 

	else 
	puts "You idiot."
	puts "On a rapids in a glass canoe, you don't just sit"
	puts "and do nothing." 
	puts "You are about to go over the waterfall when lightning"
	puts "comes out of the sky and eats you." 
	return :death 
   end
end  


	def third_room() 
	puts "You are about to hurdle over the waterfall." 
	puts "You don't seem to see a way out." 
	puts "Look! You have plastic spoons in the canoe."
	puts "You're only option is to flap with the plastic spoons."
	puts "And hope you don't die."
	puts "YOUR CHOICE" 
	
	prompt() 
	third_action = gets.chomp() 

	if third_action.include? "flap"
	puts "You are a horrible player at this game."
	puts "Just then a bunch of flak 88s fire 100 rounds at you."
	puts "The canoe is destroyed and you are everywhere."
	return :death

	elsif third_action.include? "jump out" 
	puts "You are horrible."
	puts "The water opens up and you fall through the earth"
	puts "into the sun."
	return :death

	else
	puts "You failed."
	return :death 
end 
end
end 

a_game = Game.new(:start_room) 
a_game.play() 
