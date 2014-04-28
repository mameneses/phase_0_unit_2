# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a                            # setting a variable to an array with all of the letters of the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]       # setting a variable to a Hash
    spaces = ["@", "#", "$", "%", "^", "&", "*"]          # setting a variable for the spaced to be symbols     
    
    original_sentence = sentence.downcase                 # making sure that all of the letters are lower case         
    encoded_sentence = []                                 # making an empty array
    original_sentence.each_char do |element|              # this is runing the following block on each character within the string of the original sentence.   
      if cipher.include?(element)                         # this is asking if the character is included the cipher variable 
        encoded_sentence << cipher[element]               # if the character is included it is concating it to the empty ciphered sentence
      elsif element == ' '                                # this asking is the element is a space?
        encoded_sentence << spaces.sample                 # if it is a space it is adding a random element from the variable space
      else 
        encoded_sentence << element                       # if it doesnt meet any of the above criteria just put in the same element
      end
     end
    
    return encoded_sentence.join                          # this is puting all the of the pieces back together in one string
end


# Questions:
# 1. What is the .to_a method doing? 
# turning it into an array.

# 2. How does the rotate method work? What does it work on? 
# the rotate method shifts elements of an array by the number inputed
#
# 3. What is `each_char` doing? 
# This runs an block of code on each character within a string

# 4. What does `sample` do? 
# sample chooses a random element from an array

# 5. Are there any other methods you want to understand better? 
# I would like to understand the .zip method better

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# This looks much better than the refactored solution because it is more concise and easy to read

# 7. Is this good code? What makes it good? What makes it bad?
#  good code is concise, easy to read and not redundent 

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? 
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# No because it is sampling the space variable





# 5. Reflection 
# I feel that this is one of the best ways to learn new code. Through 
# examples and analyzing examples. It really helped that we had prior 
# experience with the output and I really like working backwards from 
# the solution to the problem. (kind of like jeopardy). This showed me 
# the neat trick of .sample. This also is a great representation of how
# readable ruby can be. I truly felt like I understood the material and if 
# there was a new function, looking it up and comparing it to the example really helped.  


