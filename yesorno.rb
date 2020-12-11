require "tty-prompt"

prompt = TTY::Prompt.new

prompt.ask("What is your name?", default: ENV["USER"])
# => What is your name? (piotr)





#While the oracle is thinking - print a list of flashing words - No, Maybe, Unknown, Only time will tell, Yes, Definitely, Not right now maybe later, you need to decide