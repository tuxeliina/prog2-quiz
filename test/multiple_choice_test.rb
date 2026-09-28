require "minitest/autorun"
require_relative "../multiple_choice.rb"

class MultipleChoiceTest < Minitest::Test
  def test_answer
    mc = MultipleChoice.new("What Pokémon is nr. 1 in the pokédex?", ["Bulbasaur", "Charmander", "Squirtle", "Pikachu"], "Bulbasaur")
    assert_equal "Bulbasaur", mc.answer
  end

  def test_refuses_empty_prompt
    assert_raises(ArgumentError) {MultipleChoice.new("", ["Bulbasaur", "Charmander", "Squirtle", "Pikachu"], "Bulbasaur")}
  end

  def test_refuses_empty_alternatives
    assert_raises(ArgumentError) {MultipleChoice.new("What Pokémon is nr. 1 in the pokédex?", [], "Bulbasaur")}
  end

  def test_refuses_empty_answer
    assert_raises(ArgumentError) {MultipleChoice.new("What Pokémon is nr. 1 in the pokédex?", ["Bulbasaur", "Charmander", "Squirtle", "Pikachu"], "")}
  end
end