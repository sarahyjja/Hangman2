class Word
  def initialize(word)
    @word = word
    @word_as_letter = word.split('')
    @user_guesses = []
    @amount_of_lives = 6
  end

  def life_counter
    @amount_of_lives
  end


  def add_guess(letter)
    @user_guesses.push(letter)
    if @word_as_letter.include?(letter)
      p "YES! Still #{@amount_of_lives} lives."
      right_guess()
    else
      p "You starting this game with #{@amount_of_lives} lives."
      wrong_guess()
    end
  end

  def right_guess()
    letters = []
    @word_as_letter.each do |letter|
      letters.push(letter)
      if letter == @word_as_letter
        #letters.push(' _ ')
        puts letters.push(' _')
        # "#{letter.join(" _")}"
        # while @word_as_letter != @word do
        puts "You are right! Give me another letter"
        #puts letters.join

        else
          letters.join == @word
          puts "great! you won"
        end
      end
  end
        #letters.push(' _')

  def wrong_guess
    if @amount_of_lives >= 1
      @amount_of_lives = @amount_of_lives - 1
      p "ARGH! You have now #{@amount_of_lives} lives."
    elsif @amount_of_lives == 0
      p "GAME OVER"
    end
  end

end


####___________________________________

# class Word
#   def initialize(word)
#     @word = word
#     @word_as_letter = word.split('')
#     @user_guesses = []
#     @amount_of_lives = 6
#   end
#
#   def life_counter
#     @amount_of_lives
#   end
#
#
#   def add_guess(letter)
#     @user_guesses.push(letter)
#     if @word_as_letter.include?(letter)
#       right_guess()
#     elsif
#       wrong_guess()
#     end
#   end
#
#
#   def right_guess()
#     letters = []
#     @word_as_letter.each do |letter|
#       if
#         @user_guesses.include?(letter)
#         letters.push(letter)
#       elsif
#         letters.push('_')
#       end
#     end
#       if @word_as_letter.join == @word
#         p "You guess right! Give me another letter :"
#       else
#         p  "great! you won"
#       end
#     end
#     #letters
#   end
#
#
#   def wrong_guess
#     if @amount_of_lives > 1
#       @amount_of_lives = @amount_of_lives - 1
#     elsif @amount_of_lives == 0
#       p "GAME OVER"
#     end
#   end



#### _______

#     def counter_lives
#       @amount_of_lives
#     end
#
#
#     def add_guess(letter)
#       @user_guesses.push(letter)
#       if @word_as_letter.include?(letter)
#         right_guess()
#       elsif
#         final_result()
#       end
#     end
#
#   def right_guess(word)
#     if letter != right_guess
#       puts "#{right_guess.join(" _")}"
#       puts "You still have #{@amount_of_chance} of chances to play!"
#       puts "Continue to give me a letter"
#     else
#       puts "You wrong, try again"
#       amount_of_chance -= 1
#       puts "You still have #{@amount_of_chance} of chances to play!"
#       puts "Continue to give me a letter"
#     end
#   end
#
#   def final_result()
#     if right_guess() == letter
#       puts "You won"
#     elsif wrong_guess == @amount_of_lives >= 1
#       @amount_of_lives = @amount_of_lives - 1
#       puts "Try again"
#     elsif @amount_of_lives == 0
#       puts "GAME OVER"
#     end
#   end
# end
