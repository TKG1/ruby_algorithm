# N日間の合計勉強時間の期待値を求める。サイコロを一回振り、1,2が出た場合はA時間、3456が出た場合はB時間勉強する
# ruby 3.4.3.rb 5
# 3 1 4 1 5
# 9 2 6 5 3

N = ARGV[0].to_i
A = STDIN.gets.chomp.split.map(&:to_i)
B = STDIN.gets.chomp.split.map(&:to_i)
answer = 0.0

N.times do |i|
  answer += (A[i] / 3.0) + (B[i] * 2.0 / 3.0)
end

p answer
