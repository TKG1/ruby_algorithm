# 数列を使用した余りの計算
$mod = 1000000007

# 3×3 行列 A, B の積を返す関数
def multiply(a, b)
  c = [ [ 0, 0 , 0], [ 0, 0, 0 ], [ 0, 0, 0 ] ]
  3.times do |i|
    3.times do |j|
      3.times do |k|
        c[i][j] += a[i][k] * b[k][j]
        c[i][j] %= $mod
      end
    end
  end
  return c
end

# A の n 乗を返す関数
def power(a, n)
  pa = Marshal.load(Marshal.dump(a))
  q = [ [ 0, 0 , 0], [ 0, 0, 0 ], [ 0, 0, 0 ] ]
  flag = false
  60.times do |i|
    if (n & (1 << i)) != 0
      if flag == false
        q = Marshal.load(Marshal.dump(pa))
        flag = true
      else
        q = Marshal.load(Marshal.dump((multiply(q, pa))))
      end
    end
    pa = Marshal.load(Marshal.dump((multiply(pa, pa))))
  end
  return q
end

N = gets.to_i
A = [[1,1,1],[1,0,0],[0,1,0]]
B = power(A, N-1)

answer = (2 * B[2][0] + B[2][1] + B[2][2]) % $mod
puts answer
