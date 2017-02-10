# functions
def ask(question)
  puts question # prints question
  $stdin.gets.chomp # returns answer to variable
end

def respond(io_target, response_stmt, *response_data)
  io_target.write sprintf(response_stmt, *response_data)
  io_target.write "\n"
end

