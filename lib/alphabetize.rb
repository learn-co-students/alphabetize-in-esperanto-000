require 'Pry'

def alphabetize(arr)
  esperanto_alphabet = {"a" => 1,
                        "b" => 2,
                        "c" => 3,
                        "ĉ" => 4,
                        "d" => 5,
                        "e" => 6,
                        "f" => 7,
                        "g" => 8,
                        "ĝ" => 9,
                        "h" => 10,
                        "ĥ" => 11,
                        "i" => 12,
                        "j" => 13,
                        "ĵ" => 14,
                        "k" => 15,
                        "l" => 16,
                        "m" => 17,
                        "n" => 18,
                        "o" => 19,
                        "p" => 20,
                        "r" => 21,
                        "s" => 22,
                        "ŝ" => 23,
                        "t" => 24,
                        "u" => 25,
                        "ŭ" => 26,
                        "v" => 27,
                        "z" => 78}
  compare_letter = 0
  arr.sort{|a, b|
    until esperanto_alphabet[a[compare_letter]] != esperanto_alphabet[b[compare_letter]]
      compare_letter += 1
    end  
    esperanto_alphabet[a[compare_letter]] <=> esperanto_alphabet[b[compare_letter]]
  }
end