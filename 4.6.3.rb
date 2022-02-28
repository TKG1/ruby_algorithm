# あまりの計算

# 繰り返し二乗法
def modpow(a, b, m)
  p = a
  answer = 1
  60.times do |i|
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
N = gets.to_i
mod = 1000000007

V = modpow(4, N + 1, mod) - 1
answer = division(V, 3, mod)

puts answer
