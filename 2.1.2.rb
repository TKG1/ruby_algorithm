# A=25, B=4, C=12の合計と積を計算する
# ruby 2.1.2.rb 25 4 12
arg = ARGV.map(&:to_i)

# 合計
sum = 0
# 積
product = 1

arg.each do |number|
  sum += number
  product *= number
end

p sum
p product
