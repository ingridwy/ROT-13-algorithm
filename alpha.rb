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

