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
    # インデックスを使う方法
    # new_ary.each_with_index {|i, index|
      # if index >= n 
      #   puts(i.to_i)
      # end
      # puts "i:#{i} index:#{index}"

      # countの数よりもnが大きい時
    new_ary.each_with_index {|i, count|
      if count >= n
        puts(i)
      flag = true
        # else count < n
        # puts([].to_s)
      end
    }
    if !flag
      puts([].to_s)
    end
  end
end

#binding.break
a = ArraySample.new([1, 2, 3, 4, 5, 0])
#puts a.total
a.drop(5)
