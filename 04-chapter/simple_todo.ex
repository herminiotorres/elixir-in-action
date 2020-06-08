defmodule TodoList do
  def new(), do: %{}

  def add_entry(todo_list, date, title) do
    Map.update(
      todo_list,
      date,
      [title],
      fn titles -> [title | titles] end
    )
  end

  def entries(todo_list, date) do
    Map.get(todo_list, date, [])
  end
end


todo_list = TodoList.new()
            |> IO.inspect
            |> TodoList.add_entry(~D[2018-12-19], "Dentist") 
            |> IO.inspect
            |> TodoList.add_entry(~D[2018-12-20], "Shopping") 
            |> IO.inspect
            |> TodoList.add_entry(~D[2018-12-19], "Movies")

TodoList.entries(todo_list, ~D[2018-12-19]) 
|> IO.inspect 
|> IO.puts

TodoList.entries(todo_list, ~D[2018-12-18]) 
|> IO.inspect 
|> IO.puts
