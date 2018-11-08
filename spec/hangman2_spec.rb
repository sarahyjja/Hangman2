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

  it 'when the user make a wrong guess, it take 1 life away' do
    word = Word.new('hello')

    word.add_guess('j')
    expect(word.amount_of_lives).to eq(5)
  end

  it 'when the user has no life anymore in his bucket, we have to tell him game over' do
    word = Word.new('hello')

    word.add_guess('j')
    word.add_guess('g')
    word.add_guess('t')
    word.add_guess('s')
    word.add_guess('a')
    word.add_guess('b')
    expect(word.wrong_guess).to eq("game over")
  end

  it 'a wrong guess and I have to take a life from the user' do
    word = Word.new('hello')
    life = Life.new(6) 

    word.add_guess('w')
    Life.amount_of_lives(-1)
    expect(word.guessed_letters).to eq (['_','_','_','_','_'])
  end
end
