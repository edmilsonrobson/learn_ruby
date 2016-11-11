#write your code here

def echo(msg)
	msg
end

def shout(msg)
	msg.upcase
end

def repeat(msg)
	"#{msg} #{msg}"
end

def repeat(msg, amount = 2)
	answer = msg
	for i in 2..amount do
		answer += " #{msg}"
	end

	answer
end

def start_of_word(word, number_of_letters)
	word[0..number_of_letters-1]
end

def first_word(message)
	message.scan(/([a-zA-Z]*) /)[0][0]
end

def titleize(message)
	little_words = ["and", "or", "the", "over"]	
	new_message = ""

	index = 0
	message.scan(/[\w']+/).each do |word|		
		#puts "Index: " + index
		unless word == ""			
			if little_words.include?(word) == false or index == 0
				word = word[0].upcase + word[1..-1]
			end
			
			new_message = new_message + " " + word			
		end
		index += 1
	end	
	new_message.lstrip
end

