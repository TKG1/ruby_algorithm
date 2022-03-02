# 2*Nの長方形に 1*2,2*1の長方形で敷き詰める方法の数
K, N = gets.split.map(&:to_i)
A = [1, 2]
K.times do |i|
  A.push(A[i]+A[i+1])
end

puts A[N-1]
