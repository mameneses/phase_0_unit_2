# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode
# 
# 1. Create a method called get_grade
# 2. Sum the given array and divide the result by the total number of 
# object in the array.
# 3. If the result is >= 90 Have it return the string "A" 
# 4. If the result is >= 80 Have it return the string "B" 
# 5. If the result is >= 70 Have it return the string "C" 
# 6. If the result is >= 60 Have it return the string "D" 
# 7. If the result is < 60 return the string "F"
# 
# 2. Initial Solution

def get_grade (array_of_grades)
	avg = (array_of_grades.inject(:+)/array_of_grades.length)
	case avg 
		when 90..100
		"A"
		when 80..89
		"B"
		when 70..79
		"C"
		when 60..69
		 "D"
		else
		"F"
	end
end

# 3. Refactored Solution - This is a very optimised code but it could look cleaner.
def get_grade (array_of_grades)
	avg = (array_of_grades.inject(:+)/array_of_grades.length)
	case avg 
		when 90..100 then "A"
		when 80..89 then "B"
		when 70..79 then "C"
		when 60..69 then "D"
		else
		"F"
	end
end


# 4. Reflection 
# This was good review of an assignment that has been done in the past. 
# I had some issues with the small details of the problem. I was able to 
# refer back to my prior solution for a refresher on how I solved this 
# issue. This was straight forward and not much new was learned in this 
# problem. 