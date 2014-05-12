# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 1. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
	# 1. it is defining a method assert which raises "Assertion Failed!" unless yield, where yield is defined
	# 	based on the invoked block.
	# 2. it then sets a variable "name" to the string "bettysue"
	# 3. invoking 'assert' function on block of code that is asking if variable name is equal to "bettysue"
	# 	which returns nil
	# 4. invoking 'assert' function on block of code that is asking if variable name is equal to "billybob"
	# 	which returns the runtimeerror of "assertion failed"

# 3. Copy your selected challenge here

class Die
  def initialize(sides)
    @sides = sides
  end
  
  def sides
    if @sides < 2
      raise ArgumentError.new('Only numbers one or greater are allowed')
    end
    return @sides
  end
  
  def roll
    (1..@sides).to_a.sample
  end
end

#DRIVER TESTS GO BELOW THIS LINE

dice = Die.new(8)
puts dice.sides == 8

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Wrong number of sides!" unless yield
end

dice = Die.new(8)

assert { dice.sides == 8}
assert { dice.sides == 9}

# 5. Reflection
# This was a completely new topic for me and has been something that I have been 
# confused and wondered about for some time.  It was good to go over invoking blocks 
# using ‘yield’ and gain a better understanding of it. I am still not completely 
# clear on ‘Assert Statements’ or if I am using them right. More examples would 
# be helpful. 