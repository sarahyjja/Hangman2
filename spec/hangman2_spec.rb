require 'hangman2'

RSpec.describe Word do
  it 'give the selected word with underscore instead of letters' do
   word = Word.new("hello")
   expect(word.hidden_word).to eq("_ _ _ _ _")
  end

  it 'give the selected a longer word with underscore instead of letters' do
   word = Word.new("hello world")
   expect(word.hidden_word).to eq("_ _ _ _ _ _ _ _ _ _ _")
  end

  it "says if letter exist in selected word" do
   word = Word.new("hello")
   expect(word.exist_in_word?('h')).to be true
  end

  it "says if letter does not exist in selected word" do
   word = Word.new("hello")
   expect(word.exist_in_word?('m')).to be false
  end

  it "returns index of the letter in word" do
    word = Word.new("hello")
    expect(word.get_index_letter('h')).to  eq(0)
  end

  it "returns index of the letter in word 2" do
    word = Word.new("hello")
    expect(word.get_index_letter('o')).to  eq(4)
  end

  xit "remplaces underscore from hidden letter by correct letter" do
    word = Word.new("hello")
    expect(word.display_the_correct_letter('h')).to eq("h _ _ _ _")
  end

  xit "remplaces underscore from hidden letter when two letters correct" do
    word = Word.new("hello")
    expect(word.display_the_correct_letter('l')).to eq("_ _ l l _")
  end

  xit '3 - adds a letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    expect(word.right_guess).to eq (['h','_','_','_','_'])
    expect(word.right_guess).to eq ("You are right! Give me another letter")
  end

  xit '4 - adds a 2nd letter to the current word' do
    word = Word.new('hello')

    word.add_guess('h')
    word.add_guess('l')
    expect(word.right_guess).to eq (['h','_','l','l','_'])
    expect(word.right_guess).to eq ("You are right! Give me another letter")

  end

  xit '5 - adds a letter which is not matching with the current word' do
    word = Word.new('hello')

    word.add_guess('w')
    expect(word.wrong_guess).to eq (['_','_','_','_','_'])
  end

  xit '6 - starts a word with 6 lives' do
    word = Word.new('hello')

    expect(word.life_counter).to eq(6)
  end

  xit '7 - TESTING COUNTER OF AMOUNT OF LIFE : when the user make a wrong guess, it take 1 life away' do
    word = Word.new('hello')

    word.add_guess('j')
    expect(word.life_counter).to eq(5)
  end

  xit '8 - TESTING WHOLE PATH OF WRONG ANSWER : when the user has no life anymore in his bucket, we have to tell him game over' do
    word = Word.new('hello')

    word.add_guess('j')
    word.add_guess('g')
    word.add_guess('t')
    word.add_guess('s')
    word.add_guess('a')
    word.add_guess('b')
    expect(word.wrong_guess).to eq("GAME OVER")
  end

  xit '9 - TESTING WHOLE PATH OF RIGHT ANSWER :finally the right guess for the whole word. So now, we have to tell him great you won' do
    word = Word.new('hello')

    word.add_guess('o')
    word.add_guess('l')
    word.add_guess('h')
    word.add_guess('e')

    expect(word.right_guess).to eq("great! you won")
  end
end
