# 累積和を使用した、全体の距離を求める
# ruby 4.2.1.rb
# 4
# 8 6 9
# 6
# 2
# 1
# 3
# 2
# 3
# 4

n = STDIN.gets.chomp.to_i
a = STDIN.gets.chomp.split.map(&:to_i)
m = STDIN.gets.chomp.to_i
b = Array.new(m, 0)
m.times do |i|
  b[i] = STDIN.gets.chomp.to_i
end

s = Array.new(n, 0)
(1..(n - 1)).to_a.each do |i|
  s[i] = s[i - 1] + a[i - 1]
end

answer = 0
p s, b
(0..(m - 2)).to_a.each do |i|
  if b[i] < b[i + 1]
    answer += s[b[i + 1] - 1] - s[b[i] - 1]
  else
    answer += s[b[i] - 1] - s[b[i + 1] - 1]
  end
end

puts answer
