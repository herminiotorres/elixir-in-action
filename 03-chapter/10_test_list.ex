defmodule TestList do
  def empty?([]), do: true
  def empty?([_ | _]), do: false
end
