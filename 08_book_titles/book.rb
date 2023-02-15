def titleize(title)
    @book = Book.new
    @book.title = title.capitalize.split(" ")
    @book.tittle.collect { |word| cap(word) }.join(" ")
end

def skip_words
    [ "and", "in", "the", "of", "a", "an" ]
end

def cap(word)
    skip_words.include?(word) ? word : word.capitalize
end

