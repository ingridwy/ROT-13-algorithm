def convert(sentence,number)
   abc = "abcdefghijklmnopqrstuvwxyz"
   num_str = "1234567890"
   sym_str = "?<>',.![]}{=-)(*&^%$#`~{}"
   new_sentence = ""
   cap = []
   sentence.each_char do |char|

    if char == " " ||  num_str.include?(char) || sym_str.include?(char)
        new_sentence += char
    elsif char == char.upcase
        cap << sentence.index(char)
        new_sentence += abc[(abc.index(char.downcase)+ number.to_i)%26]
    else
      new_sentence += abc[(abc.index(char)+ number.to_i)%26]

    end
   end
   answer = ""
   new_sentence.each_char do |char|
    if cap.include?(new_sentence.index(char))
      answer += char.upcase
    else
      answer+=char
    end
   end
   return answer



end
