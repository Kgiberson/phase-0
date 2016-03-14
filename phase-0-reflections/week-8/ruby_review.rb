# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  if yield
    puts "True!"
  else
    raise "Assertion failed!"
  end
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Step 1 - Define assert statement to raise the string "Assertion failed!" if yield is false.
# Step 2 - If the block of code invoked by yield is true, return nil.
# Step 3 - assign "bettysue" to name
# Step 4 - Call the assert method on 2 different blocks of code, one true, one false.


# 3. Copy your selected challenge here

my_info = {
:first_name => "Kari",
:last_name => "Giberson",
:hometown => "Staten Island, NY",
:age => 25
}

my_info.each do |key,info|
  puts "#{info}"
end



# RSpec Tests. They are included in this file because the local variables you are creating are not accessible across files. If we try to run these files as a separate file per normal operation, the local variable checks will return nil.


# describe 'my_info' do
#   REQUIRED_KEYS = [:first_name, :last_name, :hometown, :age]

#   it "is defined as a local variable" do
#     expect(defined?(my_info)).to eq 'local-variable'
#   end

#   it "is a Hash" do
#     expect(my_info).to be_a Hash
#   end

#   REQUIRED_KEYS.each do |key|
#     it "has a :#{key} key" do
#       expect(my_info).to have_key key
#     end
#   end

#   (REQUIRED_KEYS - [:age]).each do |key|
#     it "#{key} is a String" do
#       expect(my_info[key]).to be_a String
#     end

#     it "#{key} is not empty" do
#       expect(my_info[key]).to_not be_empty
#     end
#   end

#   it ":age is an integer" do
#     expect(my_info[:age]).to be_a Fixnum
#   end

#   it ":age is positive" do
#     expect(my_info[:age]).to be > 0
#   end
# end


# 4. Convert your driver test code from that challenge into Assert Statements

assert {my_info[:first_name] == "Kari"}
assert {my_info[:last_name] == "Giberson"}
assert {my_info[:hometown] == "Staten Island, NY"}
assert {my_info[:age] == 25}



# 5. Reflection
# What concepts did you review or learn in this challenge?
  # Ruby assertions
# What is still confusing to you about Ruby?
  # I'll definitely need more practice with writing my own assert statements.
# What are you going to study to get more prepared for Phase 1?
  # All of the ruby challenges!