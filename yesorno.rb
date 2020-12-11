require "tty-prompt"

prompt = TTY::Prompt.new

prompt.ask("What is your name?", default: ENV["USER"])
# => What is your name? (piotr)