# Multiclause function

defmodule Geometry do
  @pi 3.14

  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * @pi
  end
end
