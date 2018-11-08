require 'hangman2'

RSpec.describe Word do

  it 'returns the guessed letters' do
    word = Word.new('hello')

    right_guess = word.right_guess

    expect(right_guess).to eq(['_','_','_','_','_',])
  end

  it 'returns empty letter for different length of word' do
    word = Word.new('blackberry')

    right_guess = word.right_guess

    expect(right_guess).to eq(['_','_','_','_','_','_','_','_','_','_'])
  end

  it 'adds a letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    expect(word.right_guess).to eq (['h','_','_','_','_'])
  end

  it 'adds a 2nd letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    word.add_guess('l')
    expect(word.right_guess).to eq (['h','_','l','l','_'])
  end

  it 'adds a letter which is not matching with the current word' do
    word = Word.new('hello')

    word.add_guess('w')
    expect(word.right_guess).to eq (['_','_','_','_','_'])
  end

  it 'starts a word with 6 lives' do
    word = Word.new('hello')

    expect(word.amount_of_lives).to eq(6)
  end

  it 'TESTING COUNTER OF AMOUNT OF LIFE : when the user make a wrong guess, it take 1 life away' do
    word = Word.new('hello')

    word.add_guess('j')
    expect(word.amount_of_lives).to eq(5)
  end

  it 'TESTING WHOLE PATH OF WRONG ANSWER : when the user has no life anymore in his bucket, we have to tell him game over' do
    word = Word.new('hello')

    word.add_guess('j')
    word.add_guess('g')
    word.add_guess('t')
    word.add_guess('s')
    word.add_guess('a')
    word.add_guess('b')
    expect(word.wrong_guess).to eq("GAME OVER")
  end

  it 'TESTING WHOLE PATH OF RIGHT ANSWER :finally the right guess for the whole word. So now, we have to tell him great you won' do
    word = Word.new('hello')

    word.add_guess('h')
    word.add_guess('e')
    word.add_guess('l')
    word.add_guess('l')
    word.add_guess('o')

    expect(word.right_guess).to eq("great! you won")
  end
end
