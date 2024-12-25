```elixir
list = [1, 2, 3, 4, 5]

found = Enum.any?(list, fn x ->
  if x == 3 do
    IO.puts("Found 3!")
    true
  else
    IO.puts(x)
    false
  end
end)

IO.puts("Found 3?: #{found}")
```