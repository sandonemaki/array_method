#require 'debug'

class ArraySample
  #include Enumerable
  attr_reader :total

  def initialize(input_ary)
    # @count = 0
    @total = input_ary
  end

  # def total
  #   return @total
  # end

  def drop(n)
    count = 0
    # @total.times do |num|
    #   puts num > n
    # end
    
    new_ary = @total
    new_ary.each_with_index {|i, index|
      # puts i
      # puts n
      # puts "i:#{i} n:#{n}"
      if index >= n 
        puts(i.to_i)
      end
      #puts "i:#{i} index:#{index}"
    }
    
  end
end
#binding.break
a = ArraySample.new([1, 2, 3, 4, 5, 0])
#puts a.total
a.drop(5)