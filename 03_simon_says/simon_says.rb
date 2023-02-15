def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, y=1)
    g = 1
    s = str
    begin
        s += " #{str}"
        g += 1
    end while g<y
    s
end

def start_of_word(word, gr)
    s = ''
    g = 0
    while g < gr do
      s += word[g]
      g += 1
    end
    s
  end

def first_word(word)
    a = word.split(' ')
    a[0].to_s
end

LITTLE_WORDS = %w[or and the over]
def titleize(cap) 
    words = cap.split(" ")
#     for i in 0..(words.size-1) 
#         if !LITTLE_WORDS.include?(words[i]) || i == 0
#         words[i].capitalize!
#         end
#     end
#  words.join(' ')

     words.map.with_index do |word, i|
        next word if LITTLE_WORDS.include?(word) && i != 0
        word.capitalize
      end.join(" ")
end
