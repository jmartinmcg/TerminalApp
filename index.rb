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
        # # when 2
        #     broad_qu()
        when 3
            puts "thank you for visiting.. I hope this has offered you some guidance to move forward"
            exit(0)   
        # when 4
        #     mystery_oracle()
        end
input
  


# # # def yes_no

