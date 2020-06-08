defmodule Fraction do
  defstruct a: nil, b: nil

  def new(a, b) do
    %Fraction{a: a, b: b}
  end

  def value(%Fraction{a: a, b: b}) do
    a / b
  end

  def add(%Fraction{a: a1, b: b1}, %Fraction{a: a2, b: b2}) do
    new(
      a1 * b2 + a2 * b1,
      b2 * b1
    )
  end
end

Fraction.add(
  Fraction.new(1, 2),
  Fraction.new(1, 4)
)
|> IO.inspect()
|> Fraction.value()
|> IO.puts()

Fraction.new(1, 4)
|> IO.inspect()
|> Fraction.add(Fraction.new(1, 4))
|> IO.inspect()
|> Fraction.add(Fraction.new(1, 2))
|> IO.inspect()
|> Fraction.value()
|> IO.puts()
