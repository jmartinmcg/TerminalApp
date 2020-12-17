    
    def show_options(promptb)
        choices = [
            {name: "yes or no question", value: 1},
            {name: "exit", value: 2}, 
            {name: "mystery oracle reading", value: 3}, 
            {name: "pick a number", value: 4}
        ]
        promptb.select("Choose your destiny?", choices)
        # =>
        # What size? (Press ↑/↓ arrow to move and Enter to select)
        # ‣ yes or no question
        #   exit
        #   mystery oracle reading
        #   pick a number 
    end
    

#Questions - how to then put the choices into inputs that I can create an action from ? Jarrod? 

#"yes or No Question", "Broad guidance", "Mystery oracle reading", "Exit"
