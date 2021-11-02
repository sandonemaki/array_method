# [].sum                             #=> 0
# [].sum(0.0)                        #=> 0.0
# [1, 2, 3].sum                      #=> 6
# [3, 5.5].sum                       #=> 8.5
# [2.5, 3.0].sum(0.0) {|e| e * e }   #=> 15.25
# [Object.new].sum                   #=> TypeError

class ArraySampleSum
attr_reader :new_sum

  def initialize(input_ary)
    @new_sum = input_ary
  end

  # def last
  #   @new_sum.last
  # end

  def sum
    index = 0
    s = 0
    last = @new_sum.size-1
    @new_sum.each_with_index { |i, index| 
      # pp "i:#{i} s:#{s} count:#{count}"
      # countが2（配列の最後）の時に出力
      
      s += i
      #   if index == last
      #     puts s
      #     pp "i=#{i} index=#{index} s=#{s}"
      #   end
    }
    puts s
  end
end
# a = ArraySampleSum.new([1, 2, 3])
# a.sum