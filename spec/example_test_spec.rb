require '../example_test.rb'        

describe 'index.rb' do 
    it 'does stuff' do 
        expect(hello()).to eq("hello world")
    end

  #  it 'does something else' do   # if you put an x in front of the test it won't run so you can check them one at a time. ie xit 'do something else' do - it will show up as pending when you put into the terminal rspec
    
  #  end
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