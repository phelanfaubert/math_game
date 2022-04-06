class Player
  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = 3
  end

  def lost_life
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def ask_question
    math_question = Question.new
    math_question.correct?(name)
    print '> '
    @user_answer = $stdin.gets.chomp.to_i
    if ask_question.correct?(@user_answer)
      puts "YES! You are correct."
    else
      puts 'Seriously? NOPE!'
      lost_life
    end
  end

  end
   