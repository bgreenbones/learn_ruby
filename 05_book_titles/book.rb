class Book
# write your code here
	def initialize(title="")
		@title = title
	end

	def title
		@title
	end

	def title=(new_title)
		word_list = new_title.upcase.split
		new_title = word_list[0].capitalize
		word_list.shift
		do_not_capitalize = ["A", "AN", "THE", "IN", "OF", "AT", "AND", "BUT", "OR"]

		for word in word_list
			unless do_not_capitalize.include?(word)
				new_title += " #{word.capitalize}"
			else
				new_title += " #{word.downcase}"
			end
		end

		@title = new_title
	end


end
