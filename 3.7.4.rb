# N枚カードが並べられている。左からi番目のカードに整数Aが書かれています。カードの中からいくつか選んで、合計がSになるような方法は幾つあるか？
# ruby 3.7.4.rb 3 11
# 2 5 9
arg = ARGV.map(&:to_i)
n = arg.shift
s = arg[0]
a_numbers = STDIN.gets.chomp.split.map(&:to_i)
dp = Array.new(s + 1) { Array.new(n + 1, false) }

dp[0][0] = true
(1..s).to_a.each do |i|
  dp[0][i] = false
end

i = 1
while i <= n
  j = 0
  while j <= s
    dp[i][j] = dp[i - 1][j] if j < a_numbers[i - 1]
    if j >= a_numbers[i - 1]
      if (dp[i - 1][j] == true || dp[i - 1][j - a_numbers[i - 1]] == true)
        dp[i][j] = true
      else
        dp[i][j] = false
      end
    end
    j += 1
  end
  i += 1
end

if dp[n][s] == true
  p 'YES'
else
  p 'NO'
end
