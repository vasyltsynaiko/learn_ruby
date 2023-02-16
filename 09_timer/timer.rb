class Timer

    attr_accessor :seconds
  
    def initialize
      @seconds = 0.0
    end
  
    def time_string
      sec = @seconds % 60
      minute = @seconds/60
      min = minute % 60
      hour = @seconds/3600
      "#{padded(hour)}:#{padded(min)}:#{padded(sec)}"
    end
  
    def padded(num)
      num < 10 ? "0#{num}" : "#{num}" 
    end
  
   end