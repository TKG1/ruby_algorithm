# N枚の中から、2枚選んで合計が100000となる組み合わせの数
# ruby 3.3.5.rb
arg = ARGV.map(&:to_i)
n = arg.shift

list = (1..100000).to_a.map{|i| i * 0}

(0..(n - 1)).to_a.each do |i|
  list[arg[i]] += 1
end

answer = 0

(1..49999).to_a.each do |i|
  answer += list[i] * list[100000 - i]
end

answer += list[50000] * (list[50000] - 1) / 2

puts answer
