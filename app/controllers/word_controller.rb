class WordController < ApplicationController
  def index
    @Answer = [] 
    params.each do |k,v|
      if k.start_with? "answer"
        @Answer.push(v)
      end
    end
    
    
    puts "#{@Answer} != #{@word_array}"
    if !@Answer.empty?
      @word_array=JSON.parse(session[:word_array])
      if @Answer != @word_array
        redirect_to '/word/lose'
      else
        redirect_to '/word/win'
      end
    end
    
    @Display = Hash.new
    (1..4).each do |w|
      w = Wordnik.word.get_random_word["word"]
      @Display[w]
      @Display[w] = Wordnik.word.get_definitions(w)[0]["text"]
    end
    @word_array = @Display.keys
    
    session[:word_array]=@word_array.to_s

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
