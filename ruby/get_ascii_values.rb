def get_ascii_value(character)
	character.ord
end

def is_vowel?(character)
	character_index = "aeiouAEIOU".index(character)
	!character_index.nil? && character_index >= 0
end

def is_number?(character)
	character.is_a? Numeric
end

def remove_special_characters(text)
	text.gsub(/\p{^Alnum}/, '')
end

def sum_ascii_values(characters)
	vowels = []
	consanants = []
	characters.each do |character|
		if is_vowel?(character) && !is_number?(character)
			vowels << character
		elsif !is_vowel?(character) && !is_number?(character)
			consanants << character
		end
	end
	consanants.join('').sum - vowels.join('').sum
end

text = "Dealing with failure is easy: Work hard to improve. Success is also easy to handle: You’ve solved the wrong problem. Work hard to improve."

scrubbed_text = remove_special_characters(text)
characters = scrubbed_text.split('')
puts sum_ascii_values(characters)