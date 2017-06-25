def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet = alphabet.split("").collect.with_object({}) do |letter, hash|
    hash[letter] = alphabet.index(letter)
  end


  arr.sort do |n, m| 
    i = 0
    if n[i] != m[i]
      alphabet[n[i]] <=> alphabet[m[i]]
    elsif n[i] == m[i]
      until n[i] != m[i]
        i += 1
      end
      alphabet[n[i]] <=> alphabet[m[i]]
    end
  end

end