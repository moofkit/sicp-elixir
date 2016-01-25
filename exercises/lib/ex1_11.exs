defmodule Ex1_11 do
  def recursive(n) do
    cond do
      n < 3 ->
        n
      true ->
        recursive(n-1) + recursive(n-2) + recursive (n-3)      
    end
  end

  def iterative(n) do
    iter_inner(2, 1, 0, n)
  end

  def iter_inner(a, b, c, count) do
    cond do
      count == 0 ->
        c
      true ->
        iter_inner(a + b + c, a, b, count - 1)
    end
  end
end
