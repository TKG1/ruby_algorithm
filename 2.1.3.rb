# 1 ~ 100の整数A1，A2，A3を入力し、その積を計算
# ruby 2.1.3.rb 5 51 77
arg = ARGV.map(&:to_i)

begin
  arg.each{ |number| raise unless number.between?(1, 100) }
rescue
  p '1~100の数字を入力してください'
  exit
end

# 積
product = 1

arg.each do |number|
  product *= number
end

p product
