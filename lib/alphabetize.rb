def alphabetize(arr)
  alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  result = arr.sort_by do |word|
    word.chars.map do |letter|
      alpha.index(letter)
    end
  end
end
