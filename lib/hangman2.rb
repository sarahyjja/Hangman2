class Word
  def initialize(word)
    @word = word
    @user_guesses = []
  end

  def add_guess(letter)
    @user_guesses.push(letter)
  end

  def guessed_letters
    letters = []
    @word.split('').each do |letter|
      if @user_guesses.include?(letter)
        letters.push(letter)
      else
        letters.push('_') 
      end
    end
    letters
  end
end
