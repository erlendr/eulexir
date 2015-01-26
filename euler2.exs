defmodule Fib do
  def fib(a, b, list) do
    num = a + b
    if num > 400_000_0 do
      list
    else
      res = list ++ [num]
      fib(b, num, res)
    end
  end
end

start = [1,2]

result = Fib.fib(1, 2, start) |> Enum.filter &(rem(&1, 2) == 0)
IO.puts Enum.sum(result)