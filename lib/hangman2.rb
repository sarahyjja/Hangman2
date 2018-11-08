class Word
  def initialize(word)
    @word = word
    @word_as_letter = word.split('')
    @user_guesses = []
    @lives = 6
  end


  def amount_of_lives
    @lives
  end

  # def final_result
  #     if @lives >= 1
  #     letter.join == @word
  #       #letters.join
  #     p "bravo! you won"
  #   end
  # end



  ##-------REQUEST
  def add_guess(letter)
    @user_guesses.push(letter)
    if @word_as_letter.include?(letter)
      right_guess()
    elsif
      wrong_guess()
      #p "You start with #{@lives} lives. "
    end
  end






  def right_guess
    letters = []
    @word_as_letter.each do |letter|
      if
        @user_guesses.include?(letter)
        letters.push(letter)
      else
        letters.push('_')
      end
    end
    letters
    # || final_result = (letters.join == @word) && (@lives >= 1) # && (@word_as_letter.join == @word)
     p "You guess right! Give me another letter :" || "great! you won"
  end




  def wrong_guess
    if @lives >= 1
      @lives = @lives - 1
      p "Now you have #{@lives} lives. Try again!"
    elsif  @lives == 0
      p "GAME OVER"
      # elsif @live <= 1
      #   p "This is your last chance"
    end
  end
end
