# ユーグリッドの互除法を用いて、N個の正の整数A1,A2,...,ANの最大公約数を計算する
# ruby 3.2.2.rb 24 40 60 80 90 120
arg = ARGV.map(&:to_i)

def greatest_common_divisor(a, b)
  while a >= 1 && b >= 1
    if a > b
      a = a % b
    else
      b = b % a
    end
  end

  return a if a > 1

  b
end

result = greatest_common_divisor(arg[0], arg[1])

(2..arg.length - 1).to_a.each do |i|
  result = greatest_common_divisor(result, arg[i])
end

p result
