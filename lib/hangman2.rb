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
        #creating a new function here?
      else @user_guesses != @word
            letters.push('_')
      end
    end
    letters
  end
end
