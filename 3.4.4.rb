# N種類のうち、1ドル払うと一種類が出る、確率は等倍。全種類集めるのにかかる金額の期待値を求める
# ruby 3.4.4.rb 5

N = ARGV[0].to_i
answer = 0.0
i = N.clone

while 0 < i
  answer += 1.0 * N / i
  i -= 1
end

p answer
