# 自然数Nを素因数分解する。　計算量o(√N)
# ruby 3.1.2.rb 512
arg = ARGV[0].to_i

anser = []
i = 2

while i * i <= arg
  while arg % i == 0
    arg /= i
    anser.push(i)
  end
  i += 1
end

anser.push(arg) if arg >= 2

p anser
