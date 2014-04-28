# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
#    What I learned from this solution:
#   I learned about the replace method on an object which helped to make it destructive
#   I also learned about the dup method which duplicates an object
# Copy solution here:
class Array
  def pad!(number, padding = nil)
  	(number - self.length).times { self << padding }
  	replace(self)
  end

  def pad(number, padding = nil)
    dup.pad!(number, padding)
  end
end




# 2. Second Person's solution I liked
#    What I learned from this solution:
# I learned how to properly use the .times function for an array. I also felt it was an 
# elegant code.
# Copy solution here:
class Array
  def pad!(min_size, value=nil)
    x = min_size - self.count 
    x.times do 
      self << value 
    end
    return self
  end
  def pad(min_size, value=nil)
    copy = self.clone
    x = min_size - self.count 
    x.times do 
      copy << value
    end
    return copy
  end
end



# 3. My original solution:

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
		if self.length >= min_size           
			self
		else
			until self.length == min_size do
				self.insert(-1, optional_val)
			end
			return self
		end
		
	end
end



# 4. My refactored solution:

class Array
	def pad! (min_size, optional_val = "nil")
	  padding = min_size - self.length
		if self.length >= min_size            
			self
		else
			padding.times do
			  self << optional_val
			end
			return self
		end
	end

	def pad (min_size, optional_val = "nil")
		dup.pad! (min_size, optional_val)
  end
end


# 5. Reflection
# This was very helpful to provide guidence and see the many different ways that a
# a problem can be solved. I enjoyed looking through other people solutions and borrwoing
# good clean code. I am having trouble making the code pass, but i beleive that it is due 
# to an error on my computer and does not have to do with the code itself. I learned a great
# number of tricks, which can be seen in the what i learned from their solution section. 
# this was a great way to learn.





