require('rspec')
require('pry')
require('scrabble_score')

describe('Word#scrabble') do
  # it("returns a scrabble score for hash 1") do
  #   expect(Word.new("at").scrabble()).to(eq(2))
  # end
  it("returns a scrabble score for hash 1 & 2") do
    expect(Word.new("dig").scrabble()).to(eq(5))
  end
end