class MultipleChoice
  def initialize(prompt, alternatives, answer)
    raise ArgumentError, "prompt must not be empty" if prompt.empty?
    raise ArgumentError, "alternatives must not be empty" if alternatives.empty?
    raise ArgumentError, "answer must not be empty" if answer.empty?
    raise ArgumentError, "answer must be in alternatives" if !alternatives.include?(answer)
    @prompt = prompt
    @alternatives = alternatives
    @answer = answer
  end

  def prompt
    @prompt
  end

  def alternatives
    @alternatives
  end

  def answer
    @answer
  end

  def ask
    puts prompt
    count = 0
    alternatives.each do |a|
      count += 1
      puts "#{count}. #{a}\n"
    end
    gets.chomp
  end

  def hint
    @hint = answer[0]
  end

  def hinted(reply)
    puts "Wrong. The answer starts with: #{hint}..."
    gets.chomp
  end

  def correct?(reply)
    alternatives[reply.to_i] == answer
  end
end