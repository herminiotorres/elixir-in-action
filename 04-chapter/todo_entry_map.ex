defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    Map.update(
      dict,
      key,
      [value],
      &[value | &1]
    )
  end

  def get(dict, key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoList do
  def new(), do: MultiDict.new()

  def add_entry(todo_list, entry) do
    MultiDict.add(todo_list, entry.date, entry)
  end

  def entries(todo_list, date) do
    MultiDict.get(todo_list, date)
  end
end

todo_list = TodoList.new()

todo_list =
  TodoList.add_entry(todo_list, %{date: ~D[2018-12-19], name: "Dentist"})
  |> IO.inspect()

todo_list =
  TodoList.add_entry(todo_list, %{date: ~D[2018-12-20], name: "Shopping"})
  |> IO.inspect()

todo_list =
  TodoList.add_entry(todo_list, %{date: ~D[2018-12-19], name: "Movies"})
  |> IO.inspect()

TodoList.entries(todo_list, ~D[2018-12-19])
|> IO.inspect()

TodoList.entries(todo_list, ~D[2018-12-18])
|> IO.inspect()
