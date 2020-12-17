require_relative 'welcome.rb'
require "tty-prompt"
require 'colorized_string'

prompt = TTY::Prompt.new

system("clear")

def welcome_image
puts ColorizedString["
                   .---.                    *
  *              .'_..._'.   FORTUNE        *
    *           .''_   _''.    TELLER       *
  * *          .' :  '  : '.                *
   *          .'_.-'_~_'-._'.               *
             .':     '     : '.             *
            .'  l l     l l  '.             *
           .'    l l   l l    '.            *
     ____________'''` '```____________      *
    /              .''.               l     *
   /  THE ORACLE  (  ` ) WELCOME'S YOU l    *
  /               .'..'.                l   *
 /                '----'                 l  *
/_________________________________________l *
  '--'                               '--'   *
   ||                                 ||    *
   ||                                 ||    *
  _||_                               _||_   *
  '--'                               '--'    "].blue.on_white.blink
end
welcome_image
sleep (1)

    def welcome_and_input(prompt)
        # welcome message with options for user
        show_options(prompt)  
    end
    input = welcome_and_input(prompt)
    
    case input
        when 1
            puts ColorizedString["Tell the oracle your question, or press Denter twice if you don't want to type the question but still want your answer"].colorize(:blue)
            question = gets.chomp
            sleep(1.1)
                msg = "The oracle is thinking"
                 6.times do
                 print ColorizedString["\r#{ msg}"].red
                 sleep 0.5
                 print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
                 sleep 0.5
                 end
            answers = ["yes", "no", "maybe", "can't be sure right now", "time will tell"]
            puts ColorizedString[answers.sample].red
            sleep(1.4)
        when 2
            puts ColorizedString["thank you for visiting.. I hope this has offered you some guidance to move forward"].colorize(:green)
            exit(0)   
        when 3
            sleep(1.1)
                msg = "The oracle is thinking"
                 6.times do
                 print "\r#{ msg}"
                sleep 0.5
                print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
                sleep 0.5
                end
            answers = ["Be extra alert today and you will find an answer in nature to your questions", "don't prioritise your schedule, schedule your priorities", "Now is the time to take that leap of faith you have been thinking about", "it's time to tell that person the thing you have been holding back from saying", "connect with nature today, nature has a message for you"]
            puts answers.sample
            sleep(1.4)
            welcome_and_input(prompt)
        end
