# スタートからゴールまでの最短を求める
require 'thread'

H, W = gets.split.map(&:to_i)
c = Array.new(H) { Array.new(W) }
sx, sy = gets.split.map(&:to_i)
start = (sx - 1) * W + (sy - 1)
gx, gy = gets.split.map(&:to_i)
goal = (gx - 1) * W + (gy - 1)
H.times do |i|
  c[i] = gets.split(/\s*/)
end

# 隣接リストの作成
G = Array.new(H * W) { Array.new }

H.times do |i|
  (W-1).times do |j|
    if c[i][j] == '.' && c[i][j + 1] == '.'
      idx1 = i * W + j
      idx2 = i * W + (j + 1)
      G[idx1].append(idx2)
      G[idx2].append(idx1)
    end
  end
end

(H-1).times do |i|
  W.times do |j|
    if c[i][j] == '.' && c[i + 1][j] == '.'
      idx1 = i * W + j
      idx2 = (i + 1) * W + j
      G[idx1].append(idx2)
      G[idx2].append(idx1)
    end
  end
end

dist = [ -1 ] * (H * W)
Q = Array.new
dist[start] = 0
Q.push(start)

while !Q.empty?
  pos = Q.shift
  G[pos].each do |nex|
    if dist[nex] == -1
      dist[nex] = dist[pos] + 1
      Q.push(nex)
    end
  end
end

puts (dist[goal])
