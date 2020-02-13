IO.puts("Using IF condition")

defmodule IfCalculate do
  def max(a,b) do
    if a >= b, do: a, else: b
  end
end

IO.puts IfCalculate.max(1,2)
IO.puts IfCalculate.max(2,2)
IO.puts IfCalculate.max(2,1)
IO.puts("\n")

IO.puts("Using UNLESS condition")

defmodule UnlessCalculate do
  def max(a,b) do
    unless a >= b, do: b, else: a
  end
end

IO.puts UnlessCalculate.max(1,2)
IO.puts UnlessCalculate.max(2,2)
IO.puts UnlessCalculate.max(2,1)
IO.puts("\n")

IO.puts("Using COND condition")

defmodule CondCalculate do
  def max(a,b) do
    cond do
      a >= b -> a
      true -> b
    end
  end
end

IO.puts CondCalculate.max(1,2)
IO.puts CondCalculate.max(2,2)
IO.puts CondCalculate.max(2,1)
IO.puts("\n")

IO.puts("Using CASE condition")

defmodule CaseCalculate do
  def max(a,b) do
    case a >= b do
      true -> a
      false -> b
    end
  end
end

IO.puts CaseCalculate.max(1,2)
IO.puts CaseCalculate.max(2,2)
IO.puts CaseCalculate.max(2,1)
