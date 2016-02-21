defmodule Ex1_16 do
  def result(base, exp) do
    fast_pow_iter(base, exp, 1)
  end

  def fast_pow_iter(base, exp, acc) do
    cond do
      exp == 0 ->
        acc
      is_even(exp) ->
        fast_pow_iter(base * base, div(exp, 2), acc)
      true ->
        fast_pow_iter(base, exp - 1, acc * base)
    end
  end

  def is_even(num) do
    rem(num, 2) == 0
  end
end
