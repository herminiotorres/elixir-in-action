defmodule Loop do
  def list_len(list), do: calc_list_len(list, 0)

  defp calc_list_len([], len), do: len

  defp calc_list_len([_ | tail], len) do
    calc_list_len(tail, len + 1)
  end

  def range(from, to) do
    make_range(from, to, [])
  end

  defp make_range(from, to, result) when from > to do
    result
  end

  defp make_range(from, to, result) do
    make_range(from, to - 1, [to | result])
  end

  def positive(list) do
    filter_positive(list, [])
  end

  defp filter_positive([], result) do
    Enum.reverse(result)
  end

  defp filter_positive([head | tail], result) when head > 0 do
    filter_positive(tail, [head | result])
  end

  defp filter_positive([_ | tail], result) do
    filter_positive(tail, result)
  end
end
