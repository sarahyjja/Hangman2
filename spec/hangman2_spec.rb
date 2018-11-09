require 'hangman2'

RSpec.describe Word do
  it '3 - adds a letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    expect(word.right_guess).to eq (['h','_','_','_','_'])
    expect(word.right_guess).to eq ("You are right! Give me another letter")
  end

  it '4 - adds a 2nd letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    word.add_guess('l')
    expect(word.right_guess).to eq (['h','_','l','l','_'])
    expect(word.right_guess).to eq ("You are right! Give me another letter")

  end

  it '5 - adds a letter which is not matching with the current word' do
    word = Word.new('hello')

    word.add_guess('w')
    expect(word.right_guess).to eq (['_','_','_','_','_'])
  end

  it '6 - starts a word with 6 lives' do
    word = Word.new('hello')

    expect(word.life_counter).to eq(6)
  end

  it '7 - TESTING COUNTER OF AMOUNT OF LIFE : when the user make a wrong guess, it take 1 life away' do
    word = Word.new('hello')

    word.add_guess('j')
    expect(word.life_counter).to eq(5)
  end

  it '8 - TESTING WHOLE PATH OF WRONG ANSWER : when the user has no life anymore in his bucket, we have to tell him game over' do
    word = Word.new('hello')

    word.add_guess('j')
    word.add_guess('g')
    word.add_guess('t')
    word.add_guess('s')
    word.add_guess('a')
    word.add_guess('b')
    expect(word.wrong_guess).to eq("GAME OVER")
  end

  it '9 - TESTING WHOLE PATH OF RIGHT ANSWER :finally the right guess for the whole word. So now, we have to tell him great you won' do
    word = Word.new('hello')

    word.add_guess('o')
    word.add_guess('l')
    word.add_guess('h')
    word.add_guess('e')

    expect(word.right_guess).to eq("great! you won")
  end
end
