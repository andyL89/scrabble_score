require('rspec')
require('pry')
require('scrabble_score')

describe('Word#scrabble') do
  it("returns a scrabble score for hash 1") do
    expect(Word.new("at").scrabble()).to(eq(2))
  end
  it("returns a scrabble score for hash 1 & 2") do
    expect(Word.new("dig").scrabble()).to(eq(5))
  end
  it("returns a scrabble score for hash 1 & 2 & 3") do
    expect(Word.new("bagged").scrabble()).to(eq(11))
  end
  it("returns a scrabble score for hash 1 & 2 & 3 & 4") do
    expect(Word.new("champagne").scrabble()).to(eq(19))
  end
  it("returns a scrabble score for hash 1 & 2 & 3 & 4 & 5") do
    expect(Word.new("makeup").scrabble()).to(eq(14))
  end
end