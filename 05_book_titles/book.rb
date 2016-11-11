class Book
	attr_accessor :title
# write your code here

def initialize	
	@title = ""
end

def title
	formatted_title = ""
	exceptions = ["and", "in", "the", "of", "a", "an"]

	word_list = @title.scan(/[\w]+/)

	word_index = 0
	word_list.each do |word|
		if exceptions.include?(word) == false or word_index == 0
			word = word[0].upcase + word[1..word.length]
		end
		formatted_title += " " + word

		word_index += 1
	end
	
	formatted_title.lstrip
end

end
