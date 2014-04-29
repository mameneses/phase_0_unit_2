
# U2.W4: Cipher Challenge


# I worked on this challenge with: Britney Van Valkenburg



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # takes the coded message modifies it to be all lower case letters and creates an array that contains each individual character.
  decoded_sentence = [] # intializes empty array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d",   #this takes each character and points to 4 characters behind it. We can automate this by converting each character into an integer, subtracting 
            "i" => "e",   #four and turning it back into a string i.e. char => (char.to_i -4).to_s. 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? each is iterating through each element in the array and putting in the variable x
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? because it will only become true if it meets the conditions in the following loops (aka if there is a match between the input char and the cypher), and it needs to be referenced outside of those loops. When it is true, it will not meet the if condition at the bottom, which will just add the input char itself (and not assign it to a coded value).
    cipher.each_key do |y| # What is #each_key doing here? Each key is iterating through the keys in the hash and passing it into the variable y
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? This is comparing the elements in the coded statement (x) to the keys in the cipher (y) to find a match. It gets x from the input.each loop statement and y from the cipher.each_key
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] #  Here is where it adds the corresponding value from the key, y, to the array.
        found_match = true #At this point in the code, we have passed the if conditional statement (x==y), meaning we found a match between the input char and the cypher. Thus, we can break out of the loop, and continue to the next character, since we don't want to continue the cipher.each _key loop once we found a match. 
        break  # Why is it breaking here? see above comment
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is checking to see if x is equal to any of these symbols.
        decoded_sentence << " " #If the above condition is met, add a space to the decoded_sentence array.
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?  " (0..9).to_a " is creating an array of digits. Then asking if it includes our x character. It is checking to see if the input char is a digit. 
        decoded_sentence << x #If the input char is a digit, just add the digit as is. 
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? this is looking to see if the cipher does not have a code value for one of the input characters.  
      decoded_sentence << x #If there was no match found for the input char, just add the character itself.
    end
  end
  decoded_sentence = decoded_sentence.join("") # this turns the array into a string by concatenating all the elements
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. One or more of any digit.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... this will divide every number by 100.
  end  
  return decoded_sentence # What is this returning? This is retuning our copmleted deciphered string.
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  original = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = {}
  101.upto(122) do |i|
      cipher[i.chr] = (i-4).chr  
  end  
  97.upto(100) do |i|
    cipher[i.chr] = (i+22).chr
  end
  original.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y 
        puts "I am comparing x and y. X is #{x} and Y is #{y}." 
        decoded_sentence << cipher[y]
        found_match = true
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " "
        found_match = true
        break
      end
    end
    if not found_match  
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence  
end

<<<<<<< HEAD

#Automated cipher creation; deleted unnecesary digit search; renmaed input to original 
=======
>>>>>>> fd8d6a3742f49cea9b823e2e606355fd3858bb8b

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are help together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri young-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
<<<<<<< HEAD
 
=======
# I found this very challenging. It was one of the first projects I was able to work on for the week. 
# Luckily my partner was a great help. I learned about acssi characters which greatly helped with 
# deciphering the code. This reminded me of puzzle solving which I enjoy. 
>>>>>>> fd8d6a3742f49cea9b823e2e606355fd3858bb8b
