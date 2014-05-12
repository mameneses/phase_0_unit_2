# U2.W6: REFACTORING FOR CODE READABILITY

# PAIRED WITH: SCOTT JASON AND MATIAS MENESES

#-----------------------------------------------#

# NOTE --->

# MATIAS AND I STRUGGLED WITH THIS CREDIT CARD
# VALIDATION EXCERCISE LAST WEEK. SO THIS WEEK, WE
# CAME BACK TO IT - AFTER LEARNING EVERYTHING WE
# LEARNED THIS WEEK - AND WERE ABLE TO SOLVE IT.
# OUR BIGGEST STEP WAS MAKING THE NAMES OF THE 
# VARIABLES RELATIVE TO WHAT THEY'RE DOING. ALSO,
# WE REALIZED THAT WE NEEDED TO STORE CONDITIONALS
# AND THE VALUES OF OBJECTS MANIPULATED BY METHODS
# AS A NEW OBJECT. <-- BIGGEST AHA RIGHT THERE!

#------------------------------------------------#
#------------------------------------------------#

# RELEASE 0: WRITE ASSERT STATEMENTS
# WE HAVE MOVED RELEASE 0 TO THE BOTTOM. 

#------------------------------------------------#

# NOTE: 

# AFTER COMPLETEING CORRECTLY THE CREDIT CARD
# EXCERCISE TODAY AND THEN BROUGHT IN THE DRIVER
# TO THIS EXCERCISE, WE REALIZED THAT WE CANT REALLY
# TEST FOR MUCH WHEN WE ONLY HAVE ONE METHOD TO
# PERFORM ALL THESE ACTIONS (BEHAVIORS) ON AN OBJECT.


#------------------------------------------------#

# RELEASE 1: PSEUDOCODE --->

# THIS IS WEIRD BECAUSE WE'RE REFACTORING THAN WRITING
# ASSERT STATEMENTS. WE BROKE IT UP INTO TWO PARTS:

# 	---> PART 1 REFACTORING --->
		
# 		Simple Psedocode: Refactor such that this program
# 		is representative of functional programing.

# 	WHAT IS THE POINT --->
		
# 		The point is to learn and to practice the interaction
# 		of mulitple objects. From the note on line 34, we 
# 		realized that the way this program is in its current
# 		condition only allows for our main object (new instances
# 		of credit cards) to interact with two other objects (not
# 		to mention on of these is the initialize method)

# 		This is considered under designed. This design pattern 
# 		does not allow for quick simple and straight forward 
# 		expantion and modification. not scalable. In otherwords
# 		this beast was a dinosaure before it was born.

# 	HOW DO WE GET AROUND THIS? --->
# 	HOW WILL THIS PARTICULAR REFACTOR AKNOWLEDGE THESE DESIGN ISSUES? --->

# 		In order to make this programs pattern allow for more 
# 		object interaction, we will break up the many behaviors 
# 		contained within out one behavior called check_card, while 
# 		also not attempting to over design (not quite sure what over
# 		design means, but we our interprataion is to create balance
# 		between scalability and performance). Still reading through
# 		POOD and must say, Sandi Metz is one of a kind.

	

# 	---> PART 2 ASSERT STATMENTS ON NEW REFACTORED PROGRAM --->
	
# 	INPUT: Statements that are evaluated and compared against 
# 		 their reflection in a program.

# 	OUTPUT: Success or failure, where nil or nothing (depending on ruby vs IRB)
# 		  is representative of success and a raised error is representative
# 		  of failure.

#------------------------------------------------#

# RELEASE 2: COMMENT THE CODE --->
	
	# ORIGINAL SOLUTION:

# class CreditCard
  
  # This initialize method is responsible too many behaviors.
  # We beleive (not totally sure) that initialize methods contain at most 
  # variables (instance variables to be shared amongst methods in the same class)
  # def initialize (credit_card_number)
  	
  	# ---- begin part a commenting
  	
  	# THE BELOW METHODS THAT WE WILL CREATE ALSO IMPLIES THE REMOVING OF THEIR 
  	# CORESPINDING OBJECTS IN THE INITIALIZE METHOD
  	
  	# instead of the credit_card_split object, create two methods 
  	# (remove this credit_card_split object)
  	
  	# the first method (to string) is one that converts a number into a string. This is 
  	# an array of ONE element, a string element like so: ["123"]

	# the second method (split) takes an array containing a string and splits each characted into
	# an array as its own elements like so: ["1,"2,"3"] 
	
	# the third method counts the length of the the array that is stored in the object of array of strings

	# no longer have a need to store the credit_card_split object as the value
	# of the instance variable @credit_card_number. Why? Because these objects
	# will now be represented by methods.

	# that said, we will need to create an instance variable of the incoming argument
	# in order for all of said methods to have the ability to communicate and 
	# manipulate the credit card objects.

	# credit_card_split = credit_card_number.to_s.split(//)
	# credit_card_length = credit_card_split.length
	# @credit_card_number = credit_card_split
    
    # --- end part a commenting

  	# --- begin part b commenting

  # we decided to leave this in the initalize method. We could of course make a method called
  # credit_card_length, but figured its redundant. Why? If we were able to create an instance
  # of the credit class in the first place, it should have passed this 16 digit test.
  # To do so (have a method for this outside the initialzie method) implies that
  # it is totally cool to create credit cards with one digit or a thousand digits. This
  # should be a requirement of the instantiation of a new credit card object.

   # raise ArgumentError.new("The credit card number must be 16 digits, OBVIOUSLY!") if credit_card_length != 16
   # end

  # --- end part b commenting

  # rest of comments below

# def check_card
# 	# no comment, will decide at refactor (ie not sure yet on these)
#     dynamic_array= []
#     hybrid_array = [] 
    

#     # create a method that converts and array of strings to an array of intigers

#     @credit_card_number.each {|string| dynamic_array << string.to_i}


#   # create a method that doubles every other number starting from the second to last
#   # starting from right to left. (this means double elements with an even index value)
#     16.times do |num|
#       (dynamic_array[num] *= 2) if (num % 2 == 0)
      
#       # create a method that converts an array of integers to a string
#       string_convert = dynamic_array.map { |num| num.to_s}

#       # create a method that joins the elements of an array in such a way
#       # that they become one element. This causes the array to have one element.
#       # As far as we know, the join method can only be passed to a string element.
#       # This is why the above method converts the array to string.
#       joined_array = string_convert.join('')
      
#       # create a method that take a single element and populates the array
#       # with multiple elements consisting of this single element's characters.
#       # so ["1234"] => ["1", "2", "3", "4"]
#       split_array = joined_array.split(//)
      
#       # this method was already created. it converts an array of string to an array
#       # of integers. ( example of != D.R.Y. )
#       back_to_int = split_array.map {|num| num.to_i}
    
# 	# add the numbers of an array of integers. such that [1,2,3,4] => 10  
#     sum = back_to_int.inject{|sum, num| sum + num}
#       if sum % 10 == 0
#        return true
#       else
#         false
#       end
#     end
#   end
# end

#------------------------------------------------#

# RELEASE 3: REFACTOR THE SOLUTION FOR READABILITY --->

class CreditCard
  def initialize (credit_card_number)
  @credit_card_number = credit_card_number
  raise ArgumentError.new("Credit Card Must Be 16 Digits!") if credit_card_number.to_s.size != 16
  end

  def number_to_string(number)
		number.to_s
  end
  
  def array_length(array)
  	array.length
  end

  def double_even(array)
    array.each_index do |index| 
      if index % 2 == 0
        array[index] *= 2 
      end
    end
  end

  def split_on_string(string)
    string.split("")
  end
  
  def integer_to_string(array)
		array.map { |num| num.to_s }
  end

  def join_all_elements(array)
	 array.join("")
  end

  def split_all_elements(array)
		array.split(//)
  end

  def string_to_integer(array)
		array.map { |string| string.to_i}
  end

  def sum(number)
    total = 0
		number.each { |num| total += num}
    return total
  end

  def validate(total)
    if total % 10 == 0
      return true
    else
      return false
    end
  end

  def check_card
    @credit_card_number.number_to_string.split_all_elements.string_to_integer.double_even.integer_to_string.join_all_elements.split_all_elements.string_to_integer.sum.validate
  end
end

#------------------------------------------------#

# RELEASE 0: OLD DRIVER CODE THEN CONVERTED TO ASSERT STATEMENTS -->

# DRIVER TESTS GO BELOW THIS LINE --->

# MADE A FEW NEW DRIVER CODES:

# test1 = CreditCard.new(12345)
# puts test1.number_to_string.array_length == false
test2 = CreditCard.new(1234567890123456)
puts test2.to_s.split_all_elements.array_length == 16
test3 = CreditCard.new(4563960122001999)
puts test3.check_card == true

# DRIVER CODE TRANSLATED INTO AN ASSERT STATEMENTS:

# def assert
# 	raise "Invalid Credit Card Number!" unless yield
# end

# test_one_expected_true = CreditCard.new(4563960122001999)
# assert { test_expected_true.check_card == true }

# test_two_expected_true = CreditCard.new(1235567890123456)
# assert { test_two_expected_true.check_card == true }

#------------------------------------------------#

# REFLECTION --->
# This was a true collaborative effort with Scott Jason. What i really enjoyed
# from this assignement was working from past assignments which has always helped
# me gain a point of reference and helps my understandings. Taking the functional programmings
# perspective on the problem was new for me. I feel that it took away from the
# ultimate goal of the code but it greatly improved my understanding of functional
# programming. 
#