# 二部グラフ判定

# 深さ優先探索
def dfs(pos, g, color)
  g[pos].each do |i|
    if color[i] == 0
      color[i] = 3 - color[pos]
      dfs(i, g, color)
    end
  end
end

N, M = gets.split.map(&:to_i)

A = Array.new(M)
B = Array.new(M)

M.times do |i|
  A[i], B[i] = gets.split.map(&:to_i)
end

# 隣接リストの作成
G = Array.new(N + 1) { Array.new }

M.times do |i|
  G[A[i]].push(B[i])
  G[B[i]].push(A[i])
end

# 計算
color = [ 0 ] * (N + 1)

(1..(N+1)).to_a.each do |i|
  if color[i] == 0
    color[i] = 1
    dfs(i, G, color)
  end
end


answer = true
M.times do |i|
  if color[A[i]] == color[B[i]]
    answer = false
  end
end

if answer
  puts 'Yes'
else
  puts 'No'
end
