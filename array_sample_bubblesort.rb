require 'debug'
class ArraySampleBubblesort
attr_reader :array
  def initialize(array)
    @array = array
    # pp "@array:#{@array}"
  end
  #binding.break
  def bubble_sort(sort_type)
    case sort_type
    when 'up'
        n = @array.length
        
        loop do
          swapped = false
          (n-1).times do |i|
            #pp "@array:#{@array}"
            if @array[i] > @array[i+1]
              @array[i], @array[i+1] = @array[i+1], @array[i]
              swapped = true
            end
          end
          break unless swapped
        end
        #p bubble_sort
      #end  
      
    when 'down'
      #def bubble_sort(array = 'down')
        n = @array.length
        loop do
          swapped = false

          (n-1).times do |i|
            if @array[i] < @array[i+1]
              @array[i], @array[i+1] = @array[i+1], @array[i]
              swapped = true
            end
          end
          break unless swapped
        end
    end
    puts @array
  end
end

# require './array_sample_bubblesort'
# a = ArraySampleBubblesort.new([1, 10, 3, 5, 9])  
# ArraySampleBubblesortのインスタンス化したオブジェクトがaでその中の変数として@arrayがある
# オブジェクトの中の変数をメンバという

# a.bubble_sort('11')



# case sort_type
# when 'up'
#   puts "昇順"
#   # sort_up.each_with_index {}
  
# when 'down'
#   puts "降順"
#   # sort_down.each_with_index {}

# else
#   puts "そのほか"
# end




# require 'debug'

# binding.break
# a = ["d", "a", "e", "c", "b"]
# p a.sort
# # ["a", "b", "c", "d", "e"]

# a1 = ["e", "b", "d", "a", "c"]
# p a1.sort {|a, b| a <=> b }
# # ["a", "b", "c", "d", "e"]

# a2 = ["e", "b", "d", "a", "c"]
# p a2.sort {|a, b| b <=> a }
# # ["e", "d", "c", "b", "a"]

# a3 = ["e", "b", "d", "a", "c"]
# p a3.sort {|a, b| 0 }
# # ["e", "b", "d", "a", "c"]