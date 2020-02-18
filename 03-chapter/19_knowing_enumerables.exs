Enum.each([1,2,3], fn x -> IO.puts(x) end)

Enum.map([1,2,3], fn x -> x * 2 end)

Enum.map([1,2,3], &(2 * &1))

Enum.filter([1,2,3], fn x -> rem(x, 2) == 1 end)

Enum.filter([1,2,3], &(rem(&1, 2) == 1))

# 0 is the accumulator
Enum.reduce([1,2,3], 0, fn element, sum -> sum + element end)

Enum.reduce([1,2,3], 0, &+/2)

Enum.reduce(
  [1, "not a number", 2, :x, 3],
  0,
  fn element, sum when is_number(element) ->
    sum + element
    _, sum -> sum
  end
)
