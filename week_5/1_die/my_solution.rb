# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: # of sides of a die
# Output: a random number between 1 and # of sides
# Steps: 
# 1. set an instance vairable called @sides = to sides
# 2. define a method sides
# 3. unless @sides is greater or equal to 1 raise an argument error saying the number has to be one or greater
# 4. define a method roll
# 5. create an array from 1 to @sides and sample the array.


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 2
      raise ArgumentError.new('Only numbers one or greater are allowed')
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
    (1..@sides).to_a.sample
  end
end
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

dice = Die.new(8)
puts dice.sides == 8
puts (1..dice.sides).to_a.include? (dice.roll) 



nope = Die.new(0)
puts nope

# 5. Reflection 
# I felt that this exercise was very straight forward and easy to understand. 
# I learned about the array method sample which is a good way to randomly generate 
# an elements within an array, which is the same as rolling a die. I did not have many 
# issues with this exercise and it was a good introduction to setting a class, initializing 
# the class and creating instance variables.  
