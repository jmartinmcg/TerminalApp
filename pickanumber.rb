def pick_number
    puts "pick a number between 1 and 100 in order to tell your fortune"
    n = gets.chomp.to_f
    fortune =[" today is going to be a good day", "listen within you have all the answers inside", "time to make a change", "find the good in this situation"]

    case n
        when 26..100
            sleep (0.6)
            system("clear")
            a = Artii::Base.new
            a.asciify(fortune[0])
            puts a.asciify(fortune[0])
        when 16..25 
            system("clear")
            sleep (0.6)
            a = Artii::Base.new
            a.asciify(fortune[1])
            puts a.asciify(fortune[1])
        when 9..15
            sleep (0.6)
            system("clear")
            a = Artii::Base.new
            a.asciify(fortune[2])
            puts a.asciify(fortune[2])
        when 1..10 
            sleep (0.6)
            system("clear")
            a = Artii::Base.new
            a.asciify(fortune[3])
            puts a.asciify(fortune[3])
        else 
            puts "There is an error. Is it fate? Or, will you enter a number from 1 to 100 to see your fortune?"
    end 
end