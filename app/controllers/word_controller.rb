class WordController < ApplicationController
  def index
    @Display = Hash.new
    (1..4).each do |w|
      w = Wordnik.word.get_random_word["word"]
      @Display[w]
      @Display[w] = Wordnik.word.get_definitions(w)[0]["text"]
    end
    @word_array = @Display.keys
    @word_array = @word_array.shuffle

    @definition_array = @Display.values
    @definition_array = @definition_array
  end

  def win
  end

  def lose
    @score = 0  # placeholder value 0
  end

end
