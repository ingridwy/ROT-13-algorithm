def convert(sentence,number)

  split_char = sentence.split(//)
  number_str = "1234567890"
  symbol_str = "?<>',.![]}{=-)(*&^%$#`~{}"
  alphabet_list_1 = "abcdefghijklmnopqrstuvwxyz".split(//)
  alphabet_list_2 = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz".split(//)

  codes = []
  cap =[]


  split_char.each do |alphabet|
      if alphabet == " " ||  number_str.include?(alphabet) || symbol_str.include?(alphabet)
        codes.push(alphabet)
      elsif alphabet == alphabet.upcase
        cap << split_char.index(alphabet)
        word_index = alphabet_list_1.index(alphabet.downcase) + number.to_i
        codes.push(word_index)
      else
        word_index = alphabet_list_1.index(alphabet) + number.to_i
        codes.push(word_index)
      end
  end


  word = codes.map do|code|
    if code ==" " || code.class != Integer
       code
    elsif cap.include?(codes.index(code))
      alphabet_list_2[code].upcase
    else
      alphabet_list_2[code]
    end
  end
  return word.join
end

#new_index = split_word.map { |alphabet|

    #alphabet_list = "
    #ABCDEFGHIJKLM
    #NOPQRSTUVWXYZ".split(//)

    #alphabet.index
 # }
#abcdefghijklmnopqrstuvwxyz
#NOPQRSTUVWXYZABCDEFGHIJKLM
#You are required to create a basic program which implements the basis of a ROT-13 algorithm,
#taking a string as an input and replacing each letter with the 13th letter after it. For example if I input "hello world" it should return "uryyb jbeyq".
#You should be able to customize the rotation value. IE I should be able to change 13 to any number [ n ] between 1 and 25 and it will replace each letter with the nth letter after it.
#It should not change punctuation or numbers
#It should be case sensitive
#(BONUS) build a client side interface for the program where the user can enter the string and rotation value and then see the returned output
#Test Cases:

#Rotation: 13, User Input: "Hello World", Expected Output: "Uryyb Jbeyq"
#Rotation: 13, User Input: "The Number 16.", Expected Output: "Gur Ahzore 16."
#Rotation: 19, User Input: "Hello World!", Expected Output: "Axeeh Phkew!"
