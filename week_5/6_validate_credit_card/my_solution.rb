# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of numbers
# Output: a sum of the untouched numbers and boolean determining cc validity
# Steps:
    # 1. create class called check_cc
    # 2. create an initialize method with parameter of the array (cc)
    # 3. in this initialize method, create an instance variable that stores the array
    # 4. create another method called check_card
    # 5. In this method, we'll pass the instance variable array
    # 6. Iterate over this array using each_with_index and populate a new array
    # called untouched with indexes that have a modular % 2 == 1 (even only)
    # 7. So now push these even onlys to the untouched array
    
    # AH HA **** 8. USE EACH_INDEX!!! (not each_with_index) Iterate over all 16, and if element is divisible by 2, then it gets added
    # two the touched array, if not divisible by two populate element to untouched array

    # 8. Double touch elements
    # 9. sum the touched array and then add that to the sum of the untouched array
    # 10. BUT, for double digits, break into two. To do this:
    # 11. Iterate over each array, and check if element is greater9
    # 12. If so, use the .split method to separate a two-digit number into two single
    #    digit numbers. Use the map method to modify and return this new array.
    #    ****DO THIS BEFORE ADDING THE TWO ARRAYS!!!
    # 13. Now, add all elements in one array, then same in next, then add these two
    #    values together (ie the sum of both arrays)
    # 14. And lastly, to determine cc validity, check modulus 10, 
    #    if true, return cc valid.
        
    #    **the check_card method must return a boolean when this method is called.
    #    **Class must be initialized with an instance variable of the cc array, BUT
    #    use conidtional to validate .legnth = 16 else raise argument error
        
# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits





Matias REFACTORED PSEUDO

class CreditCard
  def initialize (credit_card_number)
    @cc = credit_card_number #.join('').to_a
    #if @cc.length != 16
    #  raise ArgumentError.new("The credit card number must be 16 digits")
    #end
  end  
  def check_card 
    untouched = []
    doubled =[]
    
    @cc.each.with_index {|x,i|
      if i.even? 
        doubled.push(x)
      else
        untouched.push(x)
      end}
      
      doubled.map! { |x| x*2}.join('').to_a
      
      total = (untouched.concat(doubled)).inject(:+)
      
      if total % 10 == 0 
        puts "Valid credit card number"
      else
        puts "Invalid credit card number"
      end
  end
end

### TEST CODE ####
number = [4,5,6,3,9,6,0,1,2,2,0,0,1,9,9,9]

test = CreditCard.new(number)

test.check_card


Scott REFACTORED PSEUDO






# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


