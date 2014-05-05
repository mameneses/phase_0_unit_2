# U2.W5: Class Warfare, Validate a Credit Card Number

# Scott Jason & Matias Meneses


#---------------------------------------------


# PSEUDOCODE =>

# INPUT:  A Credit Card number 16 digits
# OUTPUT: A boolean value based on wheather or not the credit card value is valid

# STEPS:
    
    # 0. define initialize method that raises intialize error that if number is not 16 elements

    # 1. create a class called check card
    
    # 2. define two arrays called untouched and doubled
    
    # 3. iterate through check card array doubling every digit begining at index -2 and ending at index 0.
    
    # 4. populate there modfied elements to the array 'doubled'
    
    # 5. when populating the doubled array use else statement to populate the untouched 
    
    # array with the untouched elements.
    
    # 6. for both arrays use a condition to see if an element is greater than 9 if so break there two digits into single digits. 
    
    # 7. add the elements from array untouched and array doubled 
    
    # 8. check modulus 10. if equals zero return true else return false


#---------------------------------------------


# INTITIAL SOLUTION =>

# class CreditCard
#   def initialize (credit_card_number)
#     @credit_card_number = credit_card_number
#     @untouched = []
#     @doubled =[]
#   end  
  
#   def check_card 
#     if @credit_card_number.length != 16
#       raise ArgumentError.new("The credit card number must be 16 digits")
#     end
    
    
#     @credit_card_number.each_with_index do |item, index|   
#       if index.even? 
#         @doubled.push(item)
#       else
#         @untouched.push(item)
#       end
#  end
      
      
#       @doubled.map { |item| item *2 }.join('').to_a   
# <<<< here is where i am having issues
      
#       total = (@untouched.concat(@doubled)).inject(:+)
      
#       if total % 10 == 0 
#         puts "Valid credit card number"
#       else
#         puts "Invalid credit card number"
#       end
#   end
# end

#---------------------------------------------

# REFACTORED SOLUTION =>

class CreditCard
    def initialize (credit_card_number)
        @credit_card_number = credit_card_number  
        @credit_card_number = @credit_card_number.to_s
        @credit_card_number.split(//)   
        if @credit_card_number != 16
        raise ArgumentError.new("The credit card number must be 16 digits") 
        else

        
 
        @unmodified = []
        @modfied = []
        @modified_final = []

      end 
      end
    

    def check_card
        @credit_card_number.each_with_index do |item, index| 
           if index % 2 == 0
           item = item * 2
           @modfied.push(item)
           else
           @unmodified.push(item)
           end

         
           

       @modified_final = @modified.join('').split(//)
       @modified_final.map { |string_val| string_val.to_i }
    	 @total = (@unmodified.concat(@modified_final).inject(:+)

   
            
        end
       end
     end
   end
   




#---------------------------------------------

# DRIVER TESTS =>

# number = [4,5,6,3,9,6,0,1,2,2,0,0,1,9,9,9]

# test = CreditCard.new(number)

# test.check_card


#---------------------------------------------

# REFLECTION =>




