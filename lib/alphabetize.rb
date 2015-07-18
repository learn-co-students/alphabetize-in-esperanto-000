def alphabetize(arr)
espArray = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars
  arr.sort_by do |word|
    word.chars.map { |letter| espArray.index(letter) }
  end
end