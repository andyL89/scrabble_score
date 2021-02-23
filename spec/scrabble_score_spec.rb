require('rspec')
require('pry')
require('scrabble_score')

describe('Word#scrabble') do
  it("returns a scrabble score for a letter") do
    expect(Word.new("ae").scrabble()).to(eq(2))
  end
end