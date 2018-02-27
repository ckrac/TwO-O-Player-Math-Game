class Problem
  def initialize(a, b)
    @a = a
    @b = b
  end

  def problem
    num1 = rand(@a..@b)
    num2 = rand(@a..@b)
    print "What does #{num1} + #{num2} equal?"
    answer = $stdin.gets.chomp.to_i
    if num1 + num2 == answer
      puts "Correct answer"
      true
    else
      puts "Wrong, the corrent answer is #{num1 + num2}"
      false
    end
  end

end
