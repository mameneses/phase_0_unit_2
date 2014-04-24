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
	return sum
end

def sentence_maker (object_of_array)
	resulting_string = object_of_array.join(" ")
	resulting_string.capitalize.concat(".")
end



# 3. Refactored Solution

def total (number)
	number.inject {|sum, x| sum + x}
end

def sentence_maker (object_of_array)
	object_of_array.join(" ").capitalize.concat(".")
end



# 4. Reflection 
# This was an effective exercise to get use to Ruby once again after adjusting for JavaScript. 
# I faced some problems with basic syntax and getting the code to past the test. I am still 
# wrapping my mind around loops and iteration syntax. Luckily, stackoverflow.com and ruby-doc.org 
# were helpful to gain some insight and find specific syntax for problems. I learned about 
# injection and join methods for summing arrays. This helps boos my confidence in my ruby capabilities but 
# I feel I still have a long way to go if it took me a while to get past the easy exercise. I 
# enjoyed making the test pass. 
