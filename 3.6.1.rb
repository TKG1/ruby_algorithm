# マージソート
# ruby 3.6.1.rb 5 10 4 2 1

A = ARGV.map(&:to_i)

def merge_sort(array)
  return array if array.length == 1

  m = array.length / 2
  a_dash = merge_sort(array[0, m])
  b_dash = merge_sort(array[m, array.length])

  c = []
  a1 = 0
  b1 = 0

  while a1 < a_dash.length || b1 < b_dash.length
    if a1 == a_dash.length
      c.append(b_dash[b1])
      b1 += 1
    elsif b1 == b_dash.length
      c.append(a_dash[a1])
      a1 += 1
    elsif a_dash[a1] <= b_dash[b1]
      c.append(a_dash[a1])
      a1 += 1
    else
      c.append(b_dash[b1])
      b1 += 1
    end
  end

  return c
end

answer = merge_sort(A)
p answer
