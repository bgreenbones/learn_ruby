#write your code here
def pig_latin_word(word)
	first_vowel = 0
	until ['a', 'e', 'i', 'o', 'u', 'y'].include?(word[first_vowel]) do
		first_vowel += 1
	end

	if word[first_vowel] == "u" and word[first_vowel-1] == "q" and first_vowel > 0
		first_vowel += 1
	end

	suffix = "ay"
	if first_vowel > 0
		suffix = word[0..first_vowel-1] + suffix
	end

	pig_latin_word = word[first_vowel..-1] + suffix

	return pig_latin_word
end

def translate(phrase)
	pig_latin_phrase = ""

	for word in phrase.split do
		pig_latin_phrase += pig_latin_word(word) + " "
	end

	return pig_latin_phrase.strip
end
