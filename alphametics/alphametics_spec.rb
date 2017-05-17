require 'rspec'
require './alphametics'

describe Alphametics do

  it 'replaces characters with valid numbers' do
    input = "SEND + MORE = MONEY"

    result = Alphametics.solve(input)

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