# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# 1. Create a method called total
# 2. Make the method total sum the numbers in an array
# 3. Create a method called sentence_maker
# 4. Have sentance_maker turn all objects in an array into strings
# 5. Have the methods sentence_maker combine individual strings into one string
# 6. Of the resulting single string capitalize the first letter.
# 7. Of the resulting string add a period punctuation at the end.

# 2. Initial Solution


def total (number)
	sum = 0
	number.each do |x| 
		sum = sum + x
	end
end

def sentence_maker (object_of_array)
	resulting_string = object_of_array.join(" ")
	resulting_string.capitalize.concat(".")
end



# 3. Refactored Solution



# 4. Reflection 
