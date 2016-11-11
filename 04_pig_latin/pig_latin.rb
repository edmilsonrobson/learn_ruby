#write your code here

def translate(msg)
	new_message = ""
	vowels = ["a", "e", "i", "o", "u"]

	msg.scan(/[\w]+/).each do |word|
		until (vowels.include?(word[0]))
			if (word[0..1] == "qu")
				word += word[0..1]
				word[0..1] = ""
			else
				word += word[0]
				word[0] = ""
			end
		end		
		word = word + "ay"
		new_message += word + " "
	end

	new_message.rstrip
end