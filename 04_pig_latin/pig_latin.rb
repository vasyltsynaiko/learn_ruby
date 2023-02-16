def translate(text)

    phr = text.split
    phr.each do |word|
  
      word.to_s
  
      capitalization = false
  
      if word == word.capitalize
        capitalization = true
        word.downcase!
      end
      puts '111'
      if (word[0] =~ (/[aeiou]/) )
        word.concat('ay')
      elsif(word[0..1] == 'qu')
        word.concat('quay')
        word[0..1]=''
      elsif(word[1..2] == 'qu')
        word.concat(word[0] + 'quay')
        word[0..2]=''
      elsif (word[1] =~ (/[aeiou]/) )
        word.concat(word[0] + 'ay')
        word[0]=''
      elsif (word[2] =~ (/[aeiou]/) )
        word.concat(word[0..1] + 'ay')
        word[0..1]=''
      elsif (word[3] =~ (/[aeiou]/) )
        word.concat(word[0..2] + 'ay')
        word[0..2]=''
      end
  
      if capitalization
        word.capitalize!
      end
    end
    phr.join(" ")
  end