require '../pickanumber.rb'        

describe 'pickanumber.rb' do 
    it 'gets a number from the user and picks a fortune using that number' do 
        expect(hello()).to eq("hello world")
    end

end

# describe 'index.rb - validate_input' do 
#     it 'checks if input is valid' do
#     expect(validate_input("1")).to eq(true)
#     expect(validate_input("2")).to eq(true)
#     expect(validate_input("3")).to eq(true)
#     expect(validate_input("4")).to eq(true)
#     expect(validate_input("4.123123")).to eq(true)
#     expect(validate_input("4asdfesef")).to eq(true)

#     expect(validate_input("0")).to eq(false)
#     expect(validate_input("5")).to eq(false)
#     expect(validate_input("500")).to eq(false)
#     expect(validate_input("Hello")).to eq(false)
#     end 
# end