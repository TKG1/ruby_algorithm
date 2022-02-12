# 整数N以下の素数を小さい順に並べて出力する
# ruby 2.5.4.rb 5
arg = ARGV[0].to_i

# 素数
prime_number = []

def prime?(num)
  i = 2
  while i <= num - 1
    return false if (num % i).zero?

    i += 1
  end
  true
end

(1..arg).to_a.each do |num|
  prime_number << num if prime?(num) == true
end

p prime_number
