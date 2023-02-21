class Temperature
    
    def initialize(hash = {})  
        @hash = hash   
    end
    def self.from_celsius(temp)
        Temperature.new({c: temp})
    end
    
    def self.from_fahrenheit(temp)
        Temperature.new({f: temp})
    end
    
    def in_fahrenheit
        if @hash.has_key?(:f)
            return @hash[:f]
        elsif @hash.has_key?(:c)
            return @hash[:c]*9.to_f/5+32 
        elsif @temp1.is_a? Numeric
            return @temp1*9.to_f/5+32
        else
            return @temp1
        end
    end
    def in_celsius
        if @hash.has_key?(:c)
            return @hash[:c] 
        elsif @hash.has_key?(:f)
            return (@hash[:f]-32)*5.to_f/9 
        elsif @temp2.is_a? Numeric
            return (@temp2-32)*5.to_f/9
        else
            return @temp1
        end
    end
end
