# 1以上20以下の整数Nの階乗を求める
# ruby 2.5.3.rb 5
begin
  arg = ARGV[0].to_i
  raise unless arg.between?(1, 20)
rescue
  p '1~20の値を入力してください'
  exit
end
# 階乗
factorial = 1

(1..arg).to_a.each do |num|
  factorial *= num
end

p factorial
