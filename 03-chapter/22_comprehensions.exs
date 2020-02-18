for x <- [1,2,3] do
  x * x
end

for x <- [1,2,3], y <- [1,2,3], do: {x, y, x * y}

for x <- 1..10, y <- 1..10, do: {x, y, x * y}

# return a new data type using on into
multiplication_table = for x <- 1..10, y <- 1..10, into: %{} do
  {{x, y}, x * y}
end

multiplication_table[{7, 6}]

# return a new data type with filter
multiplication_table = for x <- 1..10, y <- 1..10, x <= y, into: %{} do
  {{x, y}, x * y}
end

multiplication_table[{6, 7}]
multiplication_table[{7, 6}]
