class Alphametics
  def self.solve(expression)
    {A: 1, B: 2}
  end

  def self.split(expression)
    expression.split("=").map(&:strip)
  end
end