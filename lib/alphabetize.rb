

ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
	arr.sort_by do |word|
		word.split("").map do |letter|
		  ALPHABET.index(letter)
		end
	end
end
