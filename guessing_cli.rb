# the biggest problem with this method is that it does not test whether the number is betwen 1 and 6, 
# but that seems to be outside the scope of the problem

def run_guessing_game #arguments? I guess we don't need any here
  # communicates with the user
  puts "Guess a number between 1 and 6."
  puts "Or type 'exit' to exit the CLI." #spec specifies 1 to 6 and the text...
  # assigns a variable to what has been entered
  human_guess = gets.strip.to_s
  # theoretically, we should check for whether it is an integer
  while human_guess != "exit" do
    # I tried "while human_guess.class == Fixnum do", but that did not work
    # system generates random number between 1 and 6
    random_number = rand(1..6).to_s # 
    # because we don't want 0 
    # .to_s because also includes 'exit'  
    # the problem here is that it does not account for entries between 1 and 6, but I guess that is the user's fault
    if human_guess != random_number
      puts "The computer guessed #{random_number}."
      puts "Try again!"
      puts "\n"
      run_guessing_game
    else 
      puts "You guessed the correct number!"
      puts "\n"
      run_guessing_game
    end # ends if statement 
    break
  end # ends while loop
  puts "Goodbye!" # this happens if the user prompt is 'exit'
end # ends method

# So your run_guessing_game method is going to be responsible for several things: => looks like we only need one method
# - Taking in input from the command  => assigns a variable to line gets.strip or gets.chomp
# - Comparing that input to a random number that has been generated # use == and it has to be between 1 and 6
# - Printing out a statement You guessed the correct number! if the number has been guessed correctly, or 
# The computer guessed <number>. if the number has been guessed incorrectly
# - Allowing the user to exit the program when exit is the input # prompt expects 'Goodbye'
# so it looks like it wants us to allow the user to enter both 'exit' and guessed_number; 
# normally I would have a separate prompt for that (ie, do you want to keep playing or do you want to exit?)
