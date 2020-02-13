defmodule TestNum do
  def test(x) when is_number(x) and x < 0, do: :negative
  def test(0), do: :zero
  def test(x) when is_number(x), do: :positive
end

# when you write this same module and functions in a imperative language
# you could write something like that:
# function test(x) {
#   if(x < 0) return "negative";
#   if(x ==0) return "zero";
#   return "positive";
# }
