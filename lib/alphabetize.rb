require 'pry'

def compare_strings(current, new_string)
result_array = nil
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_array = esperanto_alphabet.split("")

  i = 0
  which_one = ""
  while i < current.length
    # do nothing
    if current[i] != new_string[i]
      alphabet_array.each do |letter|

        if current[i] == letter
          result_array = "#{current}, #{new_string}"
          return result_array
        elsif new_string[i] == letter
          result_array = "#{new_string}, #{current}"
          return result_array
        end

    end
    

    end
    i += 1
    
  end



  

end

def alphabetize(arr)
  # code here
  #1. get word from array and put it in new_array
  #2. if word starts with same letter as a a word in new_array compare the two words by letters


  result_array = []
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_array = esperanto_alphabet.split("")

  alphabet_array.each do |letter|

    arr.each do |phrase|
      if phrase[0] == letter
        result_array << phrase
      end
    end
  end
  result_array

  #take result_array and compare if same letters

  final_array = []
  result_array.each_with_index do |word, index| 

      if index > 0
        i = 0
        while i < word.length
          previous_word = result_array[index-1]
          
          unless previous_word[i] == word[i]
            final_array << word
            i = word.length
          else
            #compare the two strings
            final_array.pop
            final_array << compare_strings(previous_word, word)
            

          end

          i += 1

        end
      else
        final_array << word 
      end  
  end
  
end
  







#PHASE 1
# def alphabetize(arr)
#   # code here

#   result_array = []
#   esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
#   alphabet_array = esperanto_alphabet.split("")

#   alphabet_array.each do |letter|

#     arr.each do |phrase|
#       if phrase[0] == letter
#         result_array << phrase
#       end
#     end
#   end
#   result_array
# end
#   