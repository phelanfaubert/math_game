class Question
  def initialize
    @num_one = rand(1..20)
    @num_two = rand(1..20)
    @answer = @num_one + @num_two
  end

  def ask(name)
    question = "#{name}: What does #{num_one} + #{num_two} equal?"
    puts question
    print "> "
    $stdin.gets.chomp.to_i
  end

  def correct? (input)
    @answer == input
  end
end