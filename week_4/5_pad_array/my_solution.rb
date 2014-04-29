# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

<<<<<<< HEAD
# I worked on this challenge [myself].

# 1. Pseudocode

# 1. Implement function in Array class for pad and pad!
# 2. Method accepts a minimum size (non-negative integer)
# 3. Pad value is an optional arguement
# 4. If the array length is less than minimum size, 
# pad should return a new array padded with the pad value up 
# to minimum size [1,2,3].pad(3)` should return `[1,2,3]
# 5. pad(0) should always return an equal array to origin
# 6. pad Should be non destructive
# 7. pad! (with the exclamation) should modify the origin array
# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode
=======
# I worked on this challenge by myself.

# 1. Pseudocode
>>>>>>> fd8d6a3742f49cea9b823e2e606355fd3858bb8b
# define a method called pad and a seperate method pad!.
# each method accepts minimum size (non-Negative integers) and an optional pad value as arguments.
# for pad ( if array.length is < min size, return an array with .length == min size
# if array.length >= min size return array.
# the method pad is non-destructive while pad! is destructive. 
# What is the input: this input will be a number
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
#class Array
#	def pad (min_size, optional_val = "nil")
#		array = self.clone
#		if array.length >= min_size
#			return array
#		else
#			until array.length == min_size do
#				array.push (optional_val)
#			end
#			return array
#		end
#		
#	end
#end

#class Array
#	def pad! (min_size, optional_val = "nil")
#		ary = self
#		if ary.length >= min_size
#			return ary
#		else
#			until ary.length == min_size do
#				ary.insert(-1, optional_val)
#			end
#			return ary
#		end
#		
#	end
#end

# 3. Refactored Solution

class Array
	def pad (min_size, optional_val = "nil")
		array = self.clone
		if array.length >= min_size
			return array
		else
			until array.length == min_size do
				array.push (optional_val)
			end
			return array
		end
		
	end
end

class Array
	def pad! (min_size, optional_val = "nil")
		if self.length >= min_size            #took out ary = self (redundent)
			self
		else
			until self.length == min_size do
				self.insert(-1, optional_val)
			end
			return self
		end
		
	end
end

# 4. Reflection 
# I found this problem challenging but incredibly helpful. It took me hours of scouring the internet for
# possible usable methods and functions. I learned about all the possible way to concat something to an
# array (.push, .insert, .concat, +). I am still unclear if they destructive or non destructive methods
# I also learned about new object method #clone which allowed me to make a non-destructive method in pad!
# 
