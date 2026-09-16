# frozen_string_literal: true

# 確認課題の雛形。成果リポの rb1-03-testing-basics/exercise/lib/roster.rb へ置いて実装する。
# 何を満たせばよいかは、教材リポの exercise/test/roster_test.rb に書いてある。読んでよい。
class Roster
  def initialize(names)
    @names = names
  end

  def find(name)
    if name == ""
      raise ArgumentError, "name must not be empty"
    end

    @names.each do |n|
      if n == name
        return n
      else
      end
    end
    nil
  end

  def size
    @names.length
  end
end
