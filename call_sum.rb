# require './array_sample_sum'
# a = ArraySampleSum.new([1, 2, 3])
# puts a.class
# puts a.new_sum.class
# puts a.new_sum.to_s
# a.sum


require './array_sample_bubblesort'
a = ArraySampleBubblesort.new([1, 10, 3, 5, 9])  
# ArraySampleBubblesortのインスタンス化したオブジェクトがaでその中の変数として@arrayがある
# オブジェクトの中の変数をメンバという

a.bubble_sort('11')