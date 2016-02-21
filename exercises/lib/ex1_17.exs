defmodule Ex1_17 do
  def result(a, b) do
    fast_increase(a, b)
  end

  def fast_increase(a, b) do
    cond do
      b == 0 ->
        0
      is_even(b) ->
        fast_increase(double(a), halve(b))
      true ->
        a + fast_increase(a, b - 1)
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
