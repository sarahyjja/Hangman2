class Word
  def initialize(word)
    @word = word
    @user_guesses = []
  end

class Life
  def amount_of_lives(life)
    @life = life
    @amount_of_lives = 6
  end


# ASKING FOR A LETTER
    def add_guess(letter)
      @user_guesses.push(letter)
    end




# DEFINING THE RIGHT AND WRONG GUESSES
    def guessed_letters
      letters = []
      @word.split('').each do |letter|
        if @user_guesses.include?(letter)
          letters.push(letter)
          # it's counting the amount of empty '_'
          # puts "Yay almost done, give a new letter!"
        else @user_guesses != @word
          letters.push('_')
          #@amount_of_lives - 1
          puts "you loose one life"
        end
      end
      letters
    end
  end
end
