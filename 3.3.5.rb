# 同色カードの組み合わせ。N枚のカードの中から、同じ色(赤、青、黄)のカードを2枚選ぶ方法は何通りあるか
# ruby 3.3.5.rb
n = ARGV[0].to_i

red_card = 0
bule_card = 0
yellow_card = 0

while 1 <= n
  ramdom = rand(1..3)
  case ramdom
  when 1
    red_card += 1
  when 2
    bule_card += 1
  when 3
    yellow_card += 1
  end
  n -= 1
end
p red_card, bule_card, yellow_card
def factorial(x)
  result = 1

  (1..x).to_a.each do |num|
    result *= num
  end

  result
end

def permutation(r, n)
  return factorial(n) / (factorial(n-r))
end

def combination(r, n)
  return permutation(r, n) / factorial(r)
end

# 2通りなので、r=2は確定
p combination(2, red_card) + combination(2, bule_card) + combination(2, yellow_card)
