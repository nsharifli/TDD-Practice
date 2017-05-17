require "rspec"
require "./alphametics"

describe Alphametics do
  describe ".solve" do
    xit "solves for two-character expression" do
      expression = "A + A = B"

      result = Alphametics.solve(expression)

      expect(result).to eq({
        A: 1,
        B: 2
      })
    end

    xit "replaces characters with valid numbers" do
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

  describe ".split" do
    it "splits expression into LHS and RHS" do
      expression = "A + A = B"

      result = Alphametics.split(expression, "=")

      expect(result).to eq(["A + A", "B"])
    end

    it "handles missing spaces in expression" do
      expression = "A + A =B"

      result = Alphametics.split(expression, "=")

      expect(result).to eq(["A + A", "B"])
    end

    it "handles different split arguments" do
      expression = "A + A"

      result = Alphametics.split(expression, "+")

      expect(result).to eq(["A", "A"])
    end

  end
end
