test_num = 
  fn
    number when is_number(number) and number < 0 ->
      :negative
    0 -> :zero
    number when is_number(number) and number > 0 ->
      :positive
  end

IO.puts test_num.(0)
IO.puts test_num.(-1)
IO.puts test_num.(1)
