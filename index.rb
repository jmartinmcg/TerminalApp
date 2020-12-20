require_relative 'welcome.rb'
require_relative 'pickanumber.rb'
require "tty-prompt"
require 'colorized_string'
require 'artii'

def gets
    STDIN.gets
  end

prompt = TTY::Prompt.new

system("clear")

# Welcome Image - used at the beginning of the game
def welcome_image
    puts ColorizedString["
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
   /  THE ORACLE  (  ` ) WELCOMES YOU  l    
  /               .'..'.                l   
 /                '----'                 l  
/_________________________________________l 
  '--'                               '--'   
   ||                                 ||    
   ||                                 ||    
  _||_                               _||_   
  '--'                               '--'    "].yellow
    end


#Welcome Message - The Oracle waits...
a = Artii::Base.new
a.asciify('The Oracle waits..')
puts a.asciify('The Oracle waits..')
welcome_image
sleep (1)

# Flashing oracle method uses in def game
def oraclethinking
     msg = "The oracle is thinking"
     6.times do
     print ColorizedString["\r#{ msg}"].blue
     sleep 0.5
     print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
     sleep 0.5
     end
end


# game beginning 
def game(prompt)
   
    def welcome_and_input(prompt)
        # welcome message with options for user
        show_options(prompt)  
    end
    input = welcome_and_input(prompt)
    
    case input
        when 1
                puts ColorizedString["Tell the oracle your question, or press enter twice if you don't want to type the question but still want your answer"].colorize(:blue)
                question = gets.chomp
                system("clear")
                    sleep(1.1)
                    oraclethinking
                   
                answers = ["yes", "no", "maybe", "can't be sure right now", "time will tell"]
                puts ColorizedString[answers.sample].red
                sleep(1.4)
        when 2
                system("clear")
                puts ColorizedString["thank you for visiting.. I hope this has offered you some guidance to move forward"].colorize(:blue)
                puts ColorizedString["remember this is a game, a computer selects the answers at random. Do not make any important decisions based on this game. It is for entertainment purposes only!"].colorize(:red)

                exit(0)   
        when 3
                system("clear")
                sleep(1.1)
                oraclethinking
                   
                answers = ["Be extra alert today and you will find an answer in nature to your questions", "don't prioritise your schedule, schedule your priorities", "Now is the time to take that leap of faith you have been thinking about", "it's time to tell that person the thing you have been holding back from saying", "connect with nature today, nature has a message for you"]
                puts ColorizedString[answers.sample].colorize(:green)
                sleep(1.4)
        when 4
                pick_number
    end
end

while true
    game(prompt)
end