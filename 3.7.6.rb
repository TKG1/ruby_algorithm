# ruby 3.7.6.rb 5
# 2 5 3 3 1
n = ARGV[0].to_i
a = STDIN.gets.chomp.split.map(&:to_i)
dp1 = Array.new(n + 1, 0)
dp2 = Array.new(n + 1, 0)

i = 1
while i <= n
  dp1[i] = dp2[i - 1] + a[i - 1]
  dp2[i] = [dp1[i - 1], dp2[i - 1]].max
  i += 1
end

p [dp1[n], dp2[n]].max
