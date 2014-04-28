# U2.W4: Homework Cheater!


# I worked on this challenge [myself].

# 2. Pseudocode

#define a method called excuse with inputs
# Input: teacher name, assignment name,due date,pet animal,distant reative,electronic device,city name,your name
# Output: An excuse letter
# Steps: write a generic excuse letter with the following inputs.


# 3. Initial Solution
def excuse(teacher_name,assignment_name,due_date,pet_animal,distant_reative,electronic_device,city_name,your_name)
	"Dear #{teacher_name}, I am sorry to inform you that I will not be able to submit 
	my #{assignment_name} on #{due_date}. Unfortunately, while sleeping last night my pet #{pet_animal} 
	got into my backpack and ate all of my research. This would not have been an issue but while my pet #{pet_animal} 
	was eating my homework he knocked over my #{electronic_device}, which blew up and set my house on fire. When my #{distant_reative}
	found out about the fire, it caused them such stress that my #{distant_reative} had a heart attack and passed away.
	I now have to attend my #{distant_reative}'s funeral in #{city_name} and will not be able to complete the 
	assignment in time. I would like a one week extension. Sincerely #{your_name}"
end
# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

matias_excuse  = excuse("Mrs. Cook","math homework","Friday","hampster","aunt","computer","Modesto","Matias") == "Dear Mrs. Cook, I am sorry to inform you that I will not be able to submit 
	my math homework on Friday. Unfortunately, while sleeping last night my pet hampster 
	got into my backpack and ate all of my research. This would not have been an issue but while my pet hampster 
	was eating my homework he knocked over my computer which blew up and set my house on fire. When my aunt
	found out about the fire, it caused them such stress that my aunt had a heart attack and passed away.
	I now have to attend my aunt's funeral in Modesto and will not be able to complete the 
	assignment in time. I would like a one week extension. Sincerely Matias"

smitty_excuse = excuse("Mr. House","term paper","Monday","iguana","uncle","lamp","Tahoe","Smitty") == "Dear Mr.House, I am sorry to inform you that I will not be able to submit my term paper on Monday. Unfortunately, while sleeping last night my pet iguana got into my backpack and ate all of my research. This would not have been an issue but while my pet iguana was eating my homework he knocked over my lamp, which blew up and set my house on fire. When my uncle found out about the fire, it caused them such stress that my uncle had a heart attack and passed away. I now have to attend my uncle's funeral in Tahoe and will not be able to complete the assignment in time. I would like a one week extension. Sincerely Smitty”




# 5. Reflection 


