defmodule Ex1_10 do

  def accerman(x, y) do
    cond do
      y == 0 ->
        0
      x == 0 ->
        2 * y
      y == 1 ->
        2
      true ->
        accerman(x - 1, accerman(x, y - 1))
    end
  end

  def f(n) do
    accerman(0, n)
  end

  def g(n) do
    accerman(1, n)
  end

  def h(n) do
    accerman(2, n)
  end
end
