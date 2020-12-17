require '../welcome.rb'

## When building this test - andrew started by testing a very simple thing - i.e testing for hello,  and when that worked started building a larger test. 
 
#This is to show what we are expecting ## all the \ at end of each line shows that it's expecting more to the string but on different lines 
              
describe 'welcome' do 
        it "shows the app's options" do   #\ before the ' means that you show it's not the end of the string - it's called an escape character. It's the same as the backslash before the n showing it's not an n 
            # expected_output = "\nWelcome to your friendly neighbourhood ATM!\n"\
            #  "Please select from the following options:\n"\
            #     "1. Display balance\n"\
            #     "2. Make a withdrawl\n"\
            #     "3. Make a deposit\n"\
            #     "4. Exit\n"
            expected_output = "hello"
            # app_view = AtmView.new     # this line initializes the class by creating an object - 
            # expect { app_view.show_options() }.to output(expected_output).to_stdout   # for output we call the method in the curly bracketss     #stdout - is short for standard out - print to the terminal
        end
end 
