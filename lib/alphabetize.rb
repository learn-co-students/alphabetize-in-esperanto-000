#arr = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  #puts arr

  arr.sort_by {|word| word.split("").map{ |l| ESPERANTO_ALPHABET.index(l) } }
  #puts arr
end

#alphabetize(arr)
