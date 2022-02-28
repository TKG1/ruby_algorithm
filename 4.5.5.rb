# 隣接リスト形式で頂点の個数を求める
N, M = gets.split.map(&:to_i)
A = [nil] * M
B = [nil] * M
M.times do |i|
  A[i], B[i] = gets.split.map(&:to_i)
end

# 隣接リストの作成
G = Array.new(N + 1) { Array.new }
M.times do |i|
  G[A[i]].append(B[i])
  G[B[i]].append(A[i])
end

# 答えを求める
answer = 0
(1..N).to_a.each do |i|
  cnt = 0
  G[i].each do |j|
    cnt += 1 if j < i
  end
  answer += 1 if cnt == 1
end

puts answer
