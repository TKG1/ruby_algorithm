# 整数と正の整数をすべて選ぶ
# ruby 2.1.1.rb -100 -20 -1.333 -0 1 3.14 7.636 12.25 70
arg = ARGV.map(&:to_f)

# 整数
int = [];
# 正の整数
positive_int = [];

arg.each do |number|
  int << number.to_i if number % 1 == 0
  positive_int << number.to_i if number > 0 && number % 1 == 0
end

p int
p positive_int
