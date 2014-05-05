# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of strings
# Output: ad random string from that array
# Steps:
# 1. define a method to initialzie the class die and set an instance variable @labels equal to labels


# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  end
  def sides
  	if @labels.empty?
  		raise ArgumentError.new('The array needs elements')
  	else
  		return @labels.length
  	end
  end

  def roll
  	@labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

puts die.sides == 6

puts die.roll

#puts die.to_a.include? (die.roll)




# 5. Reflection 
#This exercise really helped to solidify my understanding of classes and 
#initializing those classes. It was helpful to build off of the previous die 1 exercise. 
