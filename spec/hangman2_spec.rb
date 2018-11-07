require 'hangman2'

RSpec.describe Word do

  it 'returns the guesses letters' do
    word = Word.new('hello')

    guessed_letters = word.guessed_letters

    expect(guessed_letters).to eq(['_','_','_','_','_',])
  end

  it 'returns empty letter for different length of word' do
    word = Word.new('blackberry')

    guessed_letters = word.guessed_letters

    expect(guessed_letters).to eq(['_','_','_','_','_','_','_','_','_','_'])
  end

  it 'adds a letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    expect(word.guessed_letters).to eq (['h','_','_','_','_'])
  end

  it 'adds a 2nd letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    word.add_guess('l')
    expect(word.guessed_letters).to eq (['h','_','l','l','_'])
  end

  it 'adds a letter which is not matching with the current word' do
    word = Word.new('hello')

    word.add_guess('w')
    expect(word.guessed_letters).to eq (['_','_','_','_','_'])
  end
end
