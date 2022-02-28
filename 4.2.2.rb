# 階差を使用した、特定の時間帯にいる従業員数を求める。
# ruby 4.2.2.rb
# 10
# 7
# 0 3
# 2 4
# 1 3
# 0 3
# 5 6
# 5 6
# 5 6

t = STDIN.gets.chomp.to_i
n = STDIN.gets.chomp.to_i
l = Array.new(n, 0)
r = Array.new(n, 0)
a = Array.new(t + 1, 0)
b = Array.new(t + 1, 0)

n.times do |i|
  l[i], r[i] = STDIN.gets.chomp.split.map(&:to_i)
end

(0..(n - 2)).to_a.each do |i|
  b[l[i]] += 1
  b[r[i]] -= 1
end

a[0] = b[0]
(1..(t - 1)).to_a.each do |i|
  a[i] += b[i] + a[i - 1]
end

puts a
