# N個の整数(a1, a2, a3, .... , aN) mod 100を計算する
# ruby 2.2.4.rb -50 120 24 2 4
arg = ARGV.map(&:to_i)

sum = 0

arg.each do |number|
  sum += number
end

mod = sum / 100
p mod
