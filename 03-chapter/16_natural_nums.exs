defmodule NaturalNums do
  import IO, only: [puts: 1]

  def print(1), do: puts(1)

  def print(n) when is_integer(n) and n > 1 do
    print(n - 1)

    puts(n)
  end
end
