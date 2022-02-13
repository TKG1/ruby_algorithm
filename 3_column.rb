# 二分探索
# ruby 3_column.rb

arg = ARGV.map(&:to_i).sort

class Array
  def seach_number(number)
    return true if self.length == 1 && number == self[0]
    return false if self.length == 1 && number != self[0]

    m = self.length / 2
    left = self[0, m]
    right = self[m, self.length]

    if number < self[m]
      left.seach_number(number)
    else
      right.seach_number(number)
    end
  end
end

p arg.seach_number(100)
