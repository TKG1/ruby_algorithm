# あまりの計算

# 繰り返し二乗法
def modpow(a, b, m)
  p = a
  answer = 1
  30.times do |i|
    if (b & (1 << i)) != 0
      answer = (answer * p) % m
    end
    p = (p * p) % m
  end
  return answer
end

def division(a, b, m)
  return (a * modpow(b, m - 2, m)) % m
end

# 入力
X, Y = gets.split.map(&:to_i)
mod = 1000000007

if (2 * Y - X) < 0 or (2 * X - Y) < 0
  puts '0'
elsif (2 * Y - X) % 3 != 0 or (2 * X - Y) % 3 != 0
  puts '0'
else
  bunshi = 1
  bunbo = 1
  a = (2 * Y - X) / 3
  b = (2 * X - Y) / 3

  # 二項係数の分母と分子を求める
  (1..(a + b)).to_a.each do |i|
    bunshi *= i
		bunshi %= mod
  end
  (1..a).to_a.each do |i|
    bunbo *= i
		bunbo %= mod
  end
  (1..b).to_a.each do |i|
    bunbo *= i
		bunbo %= mod
  end

  puts (division(bunshi, bunbo, mod))
end
