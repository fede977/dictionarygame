class WordController < ApplicationController
  def index
    @Display = Hash.new
    (1..4).each do |w|
      w = Wordnik.word.get_random_word["word"]
      @Display[w]
      @Display[w] = Wordnik.word.get_definitions(w)[0]["text"]
    end
  end
end