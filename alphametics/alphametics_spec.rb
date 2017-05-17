require 'rspec'
require './alphametics'

describe Alphametics do

  it 'solves for two-character expression' do
    expression = "A + A = B"

    result = Alphametics.solve(expression)

    expect(result).to eq({
      A: 1,
      B: 2
    })
  end

  xit 'replaces characters with valid numbers' do
    expression = "SEND + MORE = MONEY"

    result = Alphametics.solve(expression)

    expect(result).to eq({
      E: 5,
      S: 9,
      N: 6,
      D: 7,
      M: 1,
      O: 0,
      R: 8,
      Y: 2
    })
  end


end