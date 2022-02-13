# 1 <= r <= n <= 20 を満たす整数n,rの時、nCrを出力する
# ruby 3.3.3.rb

r = 5
n = 8

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

p combination(r, n)
