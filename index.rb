require_relative 'welcome.rb'
require "tty-prompt"

prompt = TTY::Prompt.new

system("clear")

def welcome_image
puts "
                   .---.
  *              .'_..._'.   FORTUNE
    *           .''_   _''.    TELLER
  * *          .' :  '  : '.
   *          .'_.-'_~_'-._'.
             .':     '     : '.
            .'  l l     l l  '.
           .'    l l   l l    '.
     ____________'''` '```____________
    /              .''.               l
   /  THE ORACLE  (  ` ) WELCOME'S YOU l
  /               .'..'.                l
 /                '----'                 l
/_________________________________________l
  \  /'--'                       '--'\  /
   ||                                 ||
   ||                                 ||
  _||_                               _||_
  '--'                               '--'  "
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
            puts "Tell the oracle your question"
            question = gets.chomp
            sleep(1.1)
                msg = "The oracle is thinking"
                 6.times do
                 print "\r#{ msg}"
                 sleep 0.5
                 print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
                 sleep 0.5
                 end
            answers = ["yes", "no", "maybe", "can't be sure right now", "time will tell"]
            puts answers.sample
            sleep(1.4)
            show_options(prompt)
        when 2
            puts "thank you for visiting.. I hope this has offered you some guidance to move forward"
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
            show_options(prompt)
        end