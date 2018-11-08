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


  ##-------REQUEST
  def add_guess(letter)
    @user_guesses.push(letter)

    if @word_as_letter.include?(letter)
      right_guess()
    else
      wrong_guess()
      p "how many lives #{@lives} "
    end
  end
  ####__________
  # def wrong_guess?(letter)
  #   @lives = @lives - 1
  #   puts "you lost 1 life"
  # end

  # DEFINE WHAT IS WRONG AND WHAT IS A RIGHT GUESS
  # def guessed_letters
  #   letters = []
  #   @word.split('').each do |letter|
  #   end
  ### MAIN INSTANCE FINISHING HERE = commun
  def right_guess
      letters = []
      @word_as_letter.each do |letter|
    if @user_guesses.include?(letter)
      letters.push(letter)
      #creating a new function here?
    else
      letters.push('_')
    end
  end
  puts " you right give me another letter"
  letters
  end

  def wrong_guess
    if @lives >= 1
      @lives = @lives - 1
    p "now we have #{@lives} lives. Try again!"
  elsif @lives == 0
    p "game over"
    end
  end

end
