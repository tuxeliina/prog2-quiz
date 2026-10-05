class Quiz
  def initialize
    @score = 0
    @questions = []
  end

  def questions
    @questions
  end

  def score
    @score
  end

  # add a new question
  def add(question)
    questions << question
  end

  # how many questions are there in the quiz
  def total
    @questions.length
  end

  # run the questions
  def run
    questions.each do |q|
      reply = q.ask
      if q.correct?(reply)
        puts "Correct!"
        @score += 1
      elsif
        q.hinted(reply).strip.downcase == q.answer.downcase
        puts "Correct!"
        @score += 1
      else
        puts "Wrong. Correct answer: #{q.answer}"
      end
    end

    puts "#{@score} out of #{@questions.length} correct."
  end
end