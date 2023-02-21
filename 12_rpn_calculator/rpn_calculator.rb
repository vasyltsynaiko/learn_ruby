# class Calculator
#     attr_accessor :Calculator
# end

class RPNCalculator
    attr_accessor :numbers
  
    def initialize
      @numbers = []
    end  
  
    def push(n)
      @numbers.push(n)  
    end
  
    def plus
      @numbers.length > 1 ? @numbers.push(@numbers.pop(2).reduce(:+) ) : fail
    end
  
    def minus
      @numbers.length > 1 ? @numbers.push(@numbers.pop(2).reduce(:-) ) : fail
    end  
  
    def divide
      @numbers.length > 1 ? @numbers.push(@numbers.pop(2).inject{|x,y| x.to_f / y} ) : fail
    end
  
    def times
      @numbers.length > 1 ? @numbers.push(@numbers.pop(2).reduce(:*) ) : fail
    end
  
    def value
      @value = @numbers[-1]
    end
  
    def tokens(pol)
      pol.split(' ').map{|n| n.to_i.to_s == n ? n.to_i : n.to_sym}
    end
  
    def evaluate(pol)
      order = []
      opps = {:+ => plus, :- => minus, :/ => divide, :* => times }
      tokens(pol).reverse.chunk{|n| n.is_a?(Integer)}.each{|e,a| e == true ? a.reverse.each{|a| push(a) } : a.each {|a| order.push(a) }}
      order.reverse.each {|o| (opps[o]) }
    end
  
    def fail
      begin
        raise Exception.new("calculator is empty")
      end
    end
  
  end
