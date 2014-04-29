# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode
# define a method called separate_comma
# Have separate_comma accept an object of number
# Convert the number to a string and find the lenght of the string
# if the string length is <=3 return the string
# if the string length is == 4 insert a "," in position 1
# if the string length is == 5 insert a "," in position 2
# repeat above for lengths 6 through 10 inserting "," every 3 digits.

# 2. Initial Solution

def separate_comma(number)
	if number.to_s.length <= 3
		number.to_s
	elsif number.to_s.length == 4 
		number.to_s.insert(1, ",")
	elsif number.to_s.length == 5
		number.to_s.insert(2, ",")
	elsif number.to_s.length == 6
		number.to_s.insert(3, ",")
	elsif number.to_s.length == 7
		number.to_s.insert(1, ",").insert(5,",")
	elsif number.to_s.length ==  8
		number.to_s.insert(2, ",").insert(6,",")
	elsif number.to_s.length == 9
		number.to_s.insert(3, ",").insert(7,",")
	elsif number.to_s.length == 10
		number.to_s.insert(1, ",").insert(5,",").insert(9,",")	
	end
end

# 3. Refactored Solution
def separate_comma(number)
	num_str = number.to_s
	case num_str.length
	when 0..3
		num_str
	when 4..6
		num_str.insert(-4,",")
	when 7..9
		num_str.insert(-4,",").insert(-8,",")
	when 10..12
		num_str.insert(-4,",").insert(-8,",").insert(-12,",")
	end
end

# 4. Reflection 
# I found this assignment to be very useful. I felt that it was straight forward and challenging 
# at the same time. While coding i had questions about the insert method that i was able to answer
# through research. I learned about using insert from the back using negative numbers. This has 
# increased my confidence with the competencies. I found it tedious to write out the code for each
# number needed, but that made it enjoyable to refactor the code. 

#separate_comma(1000)  == "1,000"
#separate_comma(100000) == "100,000"
#separate_comma(50)     == "50"
#separate_comma(10000)   == "10,000"
#separate_comma(1000000)  == "1,000,000"
#separate_comma(10000000) == "10,000,000"
#separate_comma(100000000) == "100,000,000"
#separate_comma(1000000000) == "1,000,000,000"
#separate_comma(10000000000) == "10,000,000,000"
<<<<<<< HEAD
#separate_comma(100000000000) == "100,000,000,000"
=======
#separate_comma(100000000000) == "100,000,000,000"
>>>>>>> fd8d6a3742f49cea9b823e2e606355fd3858bb8b
