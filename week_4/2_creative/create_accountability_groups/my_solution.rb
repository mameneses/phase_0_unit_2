# U2.W4: Create Accountability Groups


# I worked on this challenge [myself].

# 2. Pseudocode

# Input: array of strings of an unknown amount
# Output: groups of 4 strings to 5 strings depending on amount of strings
# Steps: 
# identify the length of the array
# if length % 4 == 0 make even groups
# if length % 4 == 1 make even groups with one group of 5
# if length % 4 == 2 make even groups with two groups of 5
# if lengther % 4 == 3 make groups with one group of 3 


# 3. Initial Solution
cohort = [
"Adrian Soghoian",
"Ajay Bir Singh",
"Alec Ashford",
"Alex Mazur",
"Alexis Ernst",
"Amelia Downs",
"Amol Borcar",
"Andrew C. Koines, Jr.",
"Andrew Principe",
"antonio perez",
"Armen Vartan",
"Austin Bourdier",
"Ben Brostoff",
"Brendan Susens-Jackson",
"Brennon Williams",
"Bridgette L. Salcido",
"Britney Van Valkenburg",
"Celeen Rusk",
"Chad Everett Howard",
"Christian Moon",
"Colin Trent",
"Dakota Cousineau",
"Daniel Kim",
"Danny Glover",
"Gabriel Garrett",
"Gregory Piccolo",
"Gregory White",
"Hing Huynh",
"Ian Shuff",
"Jake Wayne",
"Jeff Kynaston",
"Jennifer Oseitutu",
"Jeuel Wilkerson",
"John Thomas Mulvahill",
"Joseph Rosztoczy",
"Josh Jeong",
"Katie Reiner",
"Kendall Carey",
"Kenneth Mendonca",
"Kirstin Jarchow",
"Kris Shanks",
"Lienha Carleton",
"Martin A. Lear",
"Matias Andres Meneses",
"Matthew Hein",
"Matthew Kuzio",
"Matthieu Gavaudan",
"Michael Drew Teter",
"Michael Ginalick",
"Neel Shah",
"Nick Giovacchini",
"Osama Zayyad",
"Phillip Crawford",
"Phillip Smith",
"RJ Arena",
"Rj Bernaldo",
"Ronald Ishak",
"Ryan Stack",
"Scott Jason",
"Sherwood Callaway",
"Siddharth Patel",
"Simon Gondeck",
"Spencer Olson",
"Stella Kim",
"Stuart Pearlman",
"Timoor Kurdi",
"Timothy Howard",
"Valentine Sverdlov",
"Vivek M George",
"Yariv Kirschner",
"Zach Pflederer",
]
# 
def grouper (array_of_names)
	# people = array_of_names.length
	# if people % 4 ==0
		puts array_of_names.shuffle.each_slice(4)  
	#elsif people % 4 == 1
	#	array_of_names.drop(5).
	#end
end

grouper(cohort)




# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


