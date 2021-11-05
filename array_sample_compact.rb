# compact は自身から nil を取り除いた配列を生成して返します。 
# a = [nil, 0, nil, 1, nil, 2, nil]
# a.compact # => [0, 1, 2]

require 'debug'

class ArraySampleCompact
  attr_reader :input_ary

  def initialize(input_ary)
    @new_ary = input_ary
  end
  #binding.break
  def compact
    
    @new_ary.delete_if do |n|
      n.nil?
    end
    
    #@new_ary.map {|baz| baz.nil? ? baz.to_s: ''}
    
    # nil.to_i
    # @new_ary.each do |baz|
    #   baz.delete(0)
    # end
    puts @new_ary
  end
end

# a = ArraySampleCompact.new([nil, 0, nil, 1, nil, 2, nil])
# a.compact
