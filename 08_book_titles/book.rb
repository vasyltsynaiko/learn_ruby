class Book

    attr_accessor :title
  
    def initilize(title)
      @title = title
    end
  
    def title
      ignor = %w{a an and in of the}
      @title.split.each_with_index.map{|word, index| ignor.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
    end
  
end