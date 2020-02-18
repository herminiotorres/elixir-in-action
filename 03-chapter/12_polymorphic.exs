defmodule Polymorphic do
  def double(x) when is_number(x), do: x * 2
  def double(x) when is_binary(x), do: x <> x
end
