def translate(word)
    if word.start_with?['a', 'e', 'i', 'o', 'u', 'y']
    word += "ay"
    elsif word.start_with?('b', 'c', 'd')
        word 
        
    end
end