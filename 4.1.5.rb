# 交点を調べる
# ruby 4.1.5.rb
# 1 1
# 2 2
# 1 2
# 2 1

def cross(ax,ay,bx,by)
  return ax * by - ay * bx
end

x1, y1 = STDIN.gets.chomp.split.map(&:to_i)
x2, y2 = STDIN.gets.chomp.split.map(&:to_i)
x3, y3 = STDIN.gets.chomp.split.map(&:to_i)
x4, y4 = STDIN.gets.chomp.split.map(&:to_i)

ans1 = cross(x1-x2, y1-y2, x1-x3, y1-y3)
ans2 = cross(x1-x2, y1-y2, x1-x4, y1-y4)
ans3 = cross(x3-x4, y3-y4, x3-x1, y3-y1)
ans4 = cross(x3-x4, y3-y4, x3-x2, y3-y2)

# if ans1 == 0 && ans2 == 0 && ans3 == 0 && ans4 == 0

is_ab = false # is_ab 線分 AB が点 C, D を分けるか？
is_cd = false # is_cd 線分 CD が点 A, B を分けるか？
is_ab = true if ans1 >= 0 and ans2 <= 0
is_ab = true if ans1 <= 0 and ans2 >= 0
is_cd = true if ans3 >= 0 and ans4 <= 0
is_cd = true if ans3 <= 0 and ans4 >= 0

if is_ab == true && is_cd == true
  puts 'YES'
else
  puts 'NO'
end
