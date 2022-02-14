# 2つの円の状態を判定する
# ruby 4.1.3.rb
x = []
y = []
r = []

2.times do |i|
  x[i], y[i], r[i]= STDIN.gets.chomp.split.map(&:to_i)
end

d = Math.sqrt((x[0] - x[1]) ** 2 + (y[0] - y[1]) ** 2)

if d < (r[0] - r[1]).abs
  p '1'
elsif d == (r[0] - r[1]).abs
  p '2'
elsif (r[0] - r[1]).abs < d && d < (r[0] + r[1])
  p '3'
elsif d == (r[0] + r[1])
  p '4'
else
  p '5'
end
