#write your code here

def translate(msg)
	new_message = ""
	vowels = ["a", "e", "i", "o", "u"]

	msg.scan(/[\w]+/).map! do |word|
		capitalized_word = (word[0] == word[0].upcase)

		until (vowels.include?(word[0]))
			if (word[0..1].downcase == "qu")
				word += word[0..1].downcase
				word[0..1] = ""
			else
				word += word[0].downcase
				word[0] = ""
			end		
		end		

		# First letter now is guaranteed to be a vowel
		if capitalized_word
			word[0] = word[0].upcase
		end
		word = word + "ay"
		new_message += word + " "
	end

	new_message.rstrip
end