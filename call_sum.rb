# require './array_sample_sum'
# a = ArraySampleSum.new([1, 2, 3])
# puts a.class
# puts a.new_sum.class
# puts a.new_sum.to_s
# a.sum


# require './array_sample_bubblesort'
# a = ArraySampleBubblesort.new([1, 10, 3, 5, 9])  
# # ArraySampleBubblesortのインスタンス化したオブジェクトがaでその中の変数として@arrayがある
# # オブジェクトの中の変数をメンバという
# a.bubble_sort('11')


## 配列の一つひとつがa.any?の戻値と等しいかを判定
# require './array_sample_any?'
# a = ArraySampleAny.new([1, 2, 3])
# result = a.any? #a.any?の返り値をresultに代入する
# puts result


## 配列の一つひとつをブロックに入れた時、正しいかを判定
require './array_sample_any?'
a = ArraySampleAny.new([1, 2, 3])

# a.any?の返り値をresultに代入する
result = a.any? {|v| v > 4}
puts result

# 上と別の書き方。proc.newしてa.any?の引数に渡している
# block = Proc.new {|v| v > 4}
# result = a.any?(&block)
# puts result
