# 二点間の最小距離を調べる
# ruby 4.1.2.rb 4
# 0 1
# 2 0
# 2 3
# 3 1

n = ARGV[0].to_i
x = Array.new(n, 0)
y = Array.new(n, 0)

n.times do |i|
  x[i], y[i] = STDIN.gets.chomp.split.map(&:to_i)
end

answer = 10000000000000000000.0

(0..(n-1)).to_a.each do |i|
  ((i+1)..(n-1)).to_a.each do |j|
    vector = Math.sqrt((x[i] - x[j]) ** 2 + (y[i] - y[j]) ** 2 )
    answer = [vector, answer].min
  end
end

p answer
