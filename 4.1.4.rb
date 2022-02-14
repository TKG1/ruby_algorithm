# 時計の針間の距離
# ruby 4.1.4.rb
# 3 4 9 0

a, b, h, m= STDIN.gets.chomp.split.map(&:to_i)

long = 30 * h + 0.5 * m
shrot = 6 * m

ax = a * Math.cos(long * Math::PI / 180)
ay = a * Math.sin(long * Math::PI / 180)
bx = b * Math.cos(shrot * Math::PI / 180)
by = b * Math.sin(shrot * Math::PI / 180)

d = Math.sqrt((ax - bx) ** 2 + (ay - by) ** 2)
p d
