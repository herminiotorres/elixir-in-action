employees = ["alice", "bob", "john"]

employees
|> Enum.with_index()
|> Enum.each(fn {employee, index} -> IO.puts("#{index + 1}. #{employee}") end)

stream = [1, 2, 3] |> Stream.map(fn x -> 2 * x end)
Enum.to_list(stream)

Enum.take(stream, 1)

Enum.with_index(stream)

Stream.with_index(stream) |> Enum.to_list()

employees
|> Stream.with_index()
|> Enum.each(fn {employee, index} -> IO.puts("#{index + 1}. #{employee}") end)

[9, -1, "foo", 25, 49]
|> Stream.filter(&(is_number(&1) and &1 > 0))
|> Stream.map(&{&1, :math.sqrt(&1)})
|> Stream.with_index()
|> Enum.each(fn {{input, result}, index} ->
  IO.puts("#{index + 1}. sqrt(#{input}) = #{result}")
end)
