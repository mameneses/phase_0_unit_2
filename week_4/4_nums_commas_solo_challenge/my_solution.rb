# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode
# define a method called separate_comma
# Have separate_comma accept an object of number
# 
# What is the input? the input will be an intiger 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def separate_comma(number)
	if number.to_s.length <= 3
		puts number.to_s
	elsif number.to_s.length == 4 
		puts number.to_s.insert(1, ",")
	elsif number.to_s.length == 5
		puts number.to_s.insert(2, ",")
	elsif number.to_s.length == 6
		puts number.to_s.insert(3, ",")
	elsif number.to_s.length == 7
		puts number.to_s.insert(1, ",").insert(5,",")
	elsif number.to_s.length ==  8
		puts number.to_s.insert(2, ",").insert(6,",")
	elsif number.to_s.length == 9
		puts number.to_s.insert(3, ",").insert(7,",")
	elsif number.to_s.length == 10
		puts number.to_s.insert(1, ",").insert(5,",").insert(9,",")	
	end
end

# 3. Refactored Solution
def separate_comma(number)
	num_str = number.to_s
	case num_str.length
	when 0..3
		puts num_str
	when 4..6
		puts num_str.insert(-4,",")
	when 7..9
		puts num_str.insert(-4,",").insert(-8,",")
	when 10..12
		puts num_str.insert(-4,",").insert(-8,",").insert(-12,",")
	end
end

# 4. Reflection 

separate_comma(1000)  == "1,000"
separate_comma(100000) == "100,000"
separate_comma(50)     == "50"
separate_comma(10000)   == "10,000"
separate_comma(1000000)  == "1,000,000"
separate_comma(10000000) == "10,000,000"
separate_comma(100000000) == "100,000,000"
separate_comma(1000000000) == "1,000,000,000"
separate_comma(10000000000) == "10,000,000,000"
separate_comma(100000000000) == "100,000,000,000"