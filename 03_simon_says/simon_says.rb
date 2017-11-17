#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times = 2)
	if times <= 0
		return ""
	end

	result = word
	until times == 1 do
		result += " #{word}"
		times -= 1
	end

	return result
end

def start_of_word(word, letters)
	if letters >= word.length
		return word
	elsif letters <= 0
		return ""
	else
		return word[0, letters]
	end
end

def first_word(phrase)
	phrase.split[0]
end

def titleize(phrase)
	new_phrase = phrase.split[0]
	new_phrase = new_phrase[0].upcase + new_phrase[1..-1]
	for word in phrase.split[1..-1] do
		if ["and", "but", "the", "over"].include?(word)
			new_phrase += " " + word
		else
			new_phrase += " " + word[0].upcase + word[1..-1]
		end
	end

	return new_phrase
end