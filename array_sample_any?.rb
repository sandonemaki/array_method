## すべてがfalseならfalse。一つでもturuがあればtrueを返す。
# p [1, 2, 3].any? {|v| v > 3 }   # => false
# p [1, 2, 3].any? {|v| v > 1 }   # => true
# p [].any? {|v| v > 0 }          # => false
# p %w[ant bear cat].any?(/d/)    # => false
# p [nil, true, 99].any?(Integer) # => true
# p [nil, true, 99].any?          # => true
# p [].any?                       # => false

### p [1, 2, 3].any? {|v| v > 3 } 
# 配列からひとつひとつ呼び出す →→ eachメソッド
# blockのパターンとマッチするか確認する →→ block.call(element)
###　###

### p [1, 2, 3].any? {|v| v > 3 } 配列の一つひとつがブロックの式と等しいか判定
require 'debug'
class ArraySampleAny
attr_reader :new_ary

  def initialize(input_ary)
    @new_ary = input_ary
  end
  #binding.break
  def any?(&block)
    
    #block = Proc.new {|n| n > 4 }
    @new_ary.each do |element|
      # chaeck = block.call(element)
      if block.call(element)
      # puts "element: #{element} chaeck: #{chaeck}"
      
      # if chaeck
        return true
      end
    end
    return false
  end
  
end










### def any?の引数が配列の一つひとつと等しいかを判定

# class ArraySampleAny
#   attr_reader :new_ary
#   # binding.break
#   def initialize(input_ary)
#     @new_ary = input_ary
#   end

#   def any?(target = true)
#     
#     @new_ary.each do |n|
#       if  n == target
#         return true
#       end
#     end
#     return false
      
#   # return 'abcdefg' #returnの返り値をresultに入れる。呼び元で結果を返す。
    
#   end

  
# end


# a = ArraySampleAny.new([1, 2, 3, 4])
# a.any?