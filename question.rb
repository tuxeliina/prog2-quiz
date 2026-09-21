class Question
  def initialize(prompt, answer)
    raise ArgumentError, "prompt must not be empty" if prompt.empty?
    raise ArgumentError, "answer must not be empty" if answer.empty?
    @prompt = prompt
    @answer = answer
  end

  def prompt
    @prompt
  end

  def answer
    @answer
  end

  # def answer=(new_answer)
  #   @answer = new_answer
  # end

  def ask
    puts prompt
    gets.chomp
  end

  def correct?(reply)
    reply.strip.downcase == answer.downcase
  end

  def hint
    @hint = answer[0]
  end

  def hinted(reply)
    puts "Wrong. The answer starts with: #{hint}..."
    gets.chomp
  end

  def to_s
    "#{prompt} (#{answer})"
  end
end
