require_relative "question"

questions = [
  Question.new("What's the first Pokémon in the pokédex?", "Bulbasaur"),
  Question.new("What is Pikachu's pokédex number?", "25"),
  Question.new("Who is number 52 in the pokédex?", "Meowth"),
]

score = 0

questions.each do |q|
  reply = q.ask
  if q.correct?(reply)
    puts "Correct!"
    score += 1
  elsif
    q.hinted(reply).strip.downcase == q.answer.downcase
    puts "Correct!"
    score += 1
  else
    puts "Wrong. Correct answer: #{q.answer}"
  end
end

puts "#{score} out of #{questions.length} correct."