# Get to know your friends!
# Adapted from https://www.quora.com/What-are-good-questions-for-the-question-game
# Heather Taylor
# Last revision February 9, 2017

# functions
def ask(question)
  puts question # prints question
  $stdin.gets.chomp # returns answer to variable
end

# pass the name of the text file into the variable filename
filename = ARGV.first

# open file and add to existing file content
target = open(filename, 'a+')

# Introduction
puts "Hello friend! What's your name?"
name = $stdin.gets.chomp

puts "\nWhat a lovely name! It's nice to meet you #{name}."
puts "Let's play a game. I'm going to ask you 9 very serious questions."
puts "Are you ready? Let's go!"

# Question 1
middle_name = ask("\nQuestion #1: What is your middle name?")

# Question 2
really_what = ask("\nQuestion #2: If you were really hungry, really exhausted AND really gross, what would you do first - eat, nap, or shower?")

#Question 3
sneaky = ask("\nPlease answer either A or B for the next question.\nQuestion #3: Sneaking into a second movie: (A) super-wrong or (B) harmless fun?")
if sneaky.upcase == 'B'
  puts "Sneaking into a second movie. tsk.. tsk.. "
elsif sneaky.upcase == 'A'
  puts "Sneaking into a second movie IS super-wrong. Good answer!"
else
  puts "The instructions stated that you were to answer either A or B."
  puts "You answered #{sneaky}! Oh well, let's move along to next question."  
end

# Question 4
time_machine = ask("\nQuestion #4: If you had a time machine, would you go back in time or visit the future?")

# Question 5
vacation = ask("\nQuestion #5: If you could go anywhere on vacation, where would you go?")

# Question 6
food = ask("\nQuestion #6: What food best describes your personality?")

# Question 7
animal = ask("\nQuestion #7: If you were an animal, what animal would you be?")

# Question 8
super_power = ask("\nQuestion #8: What super-power would you most like to have?")

# Question 9
baked_good = ask("\nQuestion #9: What is your favorite baked good? (Just asking for a friend who may or may not be an apprentice.)")

# Review + thank you
puts "\n#{name} #{middle_name}, you've been a great sport. Thank you for playing along!"
puts "Here's your responses to my very serious questions: "
puts "Your middle name is #{middle_name}."
puts "If you were really hungry, really exhausted AND really gross, you would #{really_what} first."
puts "You asnwered #{sneaky} for sneaking into a movie. A is the naughty answer, B is the proper answer, and anything else is just wrong."
puts "If you had a time machine, you would visit #{time_machine}."
puts "If you could go anywhere on vacation, you would go to #{vacation}."
puts "#{food} best describes your personality."
puts "If you where an animal, you would be a #{animal}."
puts "The super-power you would like to have is to #{super_power}."
puts "If you're lucky, one of the apprentices may make #{baked_good} someday. Maybe."

# Write results to text file.
target.write ("#{name} #{middle_name} results:")
target.write ("\nMiddle name is #{middle_name}.")
target.write ("\nIf #{name} was really hungry, really exhausted AND really gross, he/she would #{really_what} first.")
target.write ("\n#{name} answered #{sneaky} for sneaking into a movie.")
target.write ("\nIf #{name} had a time machine, he/she would visit #{time_machine}.")
target.write ("\nIf #{name} could go anywhere on vacation, he/she would go to #{vacation}.")
target.write ("\n#{food} best describes #{name}'s personality.")
target.write ("\nIf #{name} were an animal, he/she would be a #{animal}.")
target.write ("\n#{name}'s super-power would be to #{super_power}.")
target.write ("\nBake #{name} #{baked_good}.")
target.write ("\n\n") # make space for next entry into text file

# close text file
target.close
