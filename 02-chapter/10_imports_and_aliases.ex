defmodule Geometry do
  defmodule Rectangle do
    def area(a, b) do
      a * a + b * b
    end
  end
end

defmodule MyModule do
  alias Geometry.Rectangle, as: Rectangle

  def my_function(a, b) do
    Rectangle.area(a, b)
  end
end
