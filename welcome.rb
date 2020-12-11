# Welcome Page for the fortune telling App

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


class OracleOptions
    # shows the options available within the App
    def show_options
        choices = %w("yes or No Question", "Broad guidance", "Mystery oracle reading", "Exit")
        prompt.multi_select("Select option", choices)
        # =>
        #
        # Select option? (Use ↑/↓ arrow keys, press Space to select and Enter to finish)"
        # ‣ ⬡ yes or No Question
        #   ⬡ Broad guidance
        #   ⬡ Mystery oracle reading
        #   ⬡ Exit
    end
end 

