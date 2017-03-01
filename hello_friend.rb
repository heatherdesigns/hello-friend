# Get to know your friends!
# Adapted from https://www.quora.com/What-are-good-questions-for-the-question-game
# Heather Taylor
# Last revision February 9, 2017

require "./hello_functions"

# pass the name of the text file into the variable filename
filename = "./helloYou.txt"

# open file and add to existing file content
file = open(filename, 'a+')    

# Introduction
name = ask("Hello friend! What's your name?")

respond($stdout, "What a lovely name! It's nice to meet you %s.", name)
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
  respond($stdout, "You answered %s! Oh well, let's move along to next question.", sneaky)  
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

########## QUESTION: If the output for both of the sections below was the same. Could puts and target.write be combined in one statement?

# Review + thank you
respond($stdout, "%s %s, you've been a great sport. Thank you for playing along!", name, middle_name)
respond($stdout, "Here's your responses to my very serious questions: ")
respond($stdout, "Your middle name is %s.", middle_name)
respond($stdout, "If you were really hungry, really exhausted AND really gross, you would %s first.", really_what)
respond($stdout, "You asnwered %s for sneaking into a movie. A is the naughty answer, B is the proper answer, and anything else is just wrong.", sneaky)
respond($stdout, "If you had a time machine, you would visit %s.", time_machine)
respond($stdout, "If you could go anywhere on vacation, you would go to %s.", vacation)
respond($stdout, "%s best describes your personality.", food)
respond($stdout, "If you where an animal, you would be a %s.", animal)
respond($stdout, "The super-power you would like to have is to %s.", super_power)
respond($stdout, "If you're lucky, one of the apprentices may make %s someday. Maybe.", baked_good)

# Write results to text file.   
respond(file, "%s %s results:", name, middle_name)
respond(file, "Middle name is %s.", middle_name)
respond(file, "If %s was really hungry, really exhausted AND really gross, he/she would %s first.", name, really_what)
respond(file, "%s answered %s for sneaking into a movie.", name, sneaky)
respond(file, "If %s had a time machine, he/she would visit %s.", name, time_machine)
respond(file, "If %s could go anywhere on vacation, he/she would go to %s.", name, vacation)
respond(file, "%s best describes %s's personality.", food, name)
respond(file, "If %s were an animal, he/she would be a %s.", name, animal)
respond(file, "%s's super-power would be to %s.", name, super_power)
respond(file, "Bake %s %s.", name, baked_good)


# close text file
file.close
