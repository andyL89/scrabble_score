require('rspec')
require('scrabble_score')

describe('Word#scrabble') do
  it("returns a scrabble score for a letter") do
    expect(Word.new("a").scrabble()).to(eq(1))
  end
end