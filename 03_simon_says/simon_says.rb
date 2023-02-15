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

def titleize(cap)
  string = cap.split(" ")
  string[0].capitalize!
end
