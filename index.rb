





def welcome_and_input(welcome)
   # welcome message with options for user
    welcome.show_option

        input - gets.chomp 
         input_valid = Validators.validate_input(input)
    if !input_valid
         # print error message for invalid input
         # and re-print welcome
        puts "...Interesting you did not enter a number from 1-4, was this a mistake or divine intervention? Enter an option again if you feel so necessary."
    end

    case input.to_i
        when 1
            yes_no()
        when 2
            broad_qu()
        when 3
            puts "thank you for visiting.. I hope this has offered you some guidance to move forward"
            exit(0)   
        when 4
            mystery_oracle()
        end

        welcome_and_input(welcome)
    end


    
