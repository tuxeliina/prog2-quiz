require_relative "question"
require_relative "multiple_choice"
require_relative "quiz.rb"

quiz = Quiz.new

quiz.add(Question.new("What's the first Pokémon in the pokédex?", "Bulbasaur"))
quiz.add(Question.new("What is Pikachu's pokédex number?", "25"))
quiz.add(Question.new("Who is number 52 in the pokédex?", "Meowth"))
quiz.add(MultipleChoice.new("What Pokémon is nr. 4 in the pokédex?", ["Bulbasaur", "Charmander", "Squirtle", "Pikachu"], "Charmander"))

quiz.run
puts "#{quiz.score} av #{quiz.total} rätt."