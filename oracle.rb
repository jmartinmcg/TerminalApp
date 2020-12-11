# msg = "The oracle is thinking"


# 6.times do
#   print "\r#{ msg}"
#   sleep 0.5
#   print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
#   sleep 0.5
# end

# puts "Answer is no"

class Oracle
    # shows the options available within the App
    def show_options
        puts ".-.  .-.,---.  ,-.    ,--,  .---.           ,---.   
        | |/\\| || .-'  | |  .' .') / .-. \) |\\    /| | .-'   
        | /  \ || `-.  | |  |  |\(_\)| | |\(_\)|\(\  / | | `-.   
        |  /\  || .-'  | |  \  \   | | | | (_)\/  | | .-'   
        |(/  \ ||  `--.| `--.\  `-.\ `-' / | \  / | |  `--. 
        (_)   \|/( __.'|( __.'\____\)---'  | |\/| | /( __.' 
               (__)    (_)         (_)     '-'  '-'(__)     "
        puts "\nWelcome to the Oracle!" 
        # choices = %w("yes or No Question", "Broad guidance", "Mystery oracle reading", "Exit")
        # prompt.multi_select("Select option", choices)
        # # =>
        # #
        # # Select option? (Use ↑/↓ arrow keys, press Space to select and Enter to finish)"
        # # ‣ ⬡ yes or No Question
        # #   ⬡ Broad guidance
        # #   ⬡ Mystery oracle reading
        # #   ⬡ Exit
       
        puts "Do you come with a specific burning question that you want a 'yes' or 'no' answer to? Or do you have a more broad area of life where you want to receive guidance?"
        puts "Type 1 for Yes or No Qu"
        puts "Type 2 for broad guidance"
        puts "Type 3 for a mystery oracle reading"
        puts "Type 4 to Exit"
    end
end 
Oracle.show_options