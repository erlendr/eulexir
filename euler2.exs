defmodule Fib do
  def fib(_, b, list) when b > 400_000_000 do
    list
  end

  def fib(a, b, list) do
    num = a + b
    res = list ++ [num]
    fib(b, num, res)
  end
end

start = [1,2]

result = Fib.fib(1, 2, start) |> Enum.filter &(rem(&1, 2) == 0)
IO.puts Enum.sum(result)