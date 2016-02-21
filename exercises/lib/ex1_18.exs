defmodule Ex1_18 do
  def result(a, b) do
    fast_increase_iter(a, b, 0)
  end

  def fast_increase_iter(a, b, acc) do
    cond do
      b == 0 ->
        acc
      is_even(b) ->
        fast_increase_iter(double(a), halve(b), acc)
      true ->
        fast_increase_iter(a, b - 1, acc + a)
    end
  end

  def is_even(num) do
    rem(num, 2) == 0
  end

  def double(num) do
    num + num
  end

  def halve(num) do
    div(num, 2)
  end
end
