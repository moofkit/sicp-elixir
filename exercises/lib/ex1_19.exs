defmodule Ex1_19 do
  def result(num) do
    fast_fib_iter(1, 0, 0, 1, num)
  end

  def fast_fib_iter(a, b, p, q, count) do
    cond do
      count == 0 ->
        b
      is_even(count) ->
        fast_fib_iter(
          a,
          b,
          square(p) + square(q),
          2 * p * q + square(q),
          halve(count)
        )
      true ->
        fast_fib_iter(
          b * q + a * q + a * p,
          b * p + a * q,
          p,
          q,
          count - 1
        )
    end
  end

  def is_even(num) do
    rem(num, 2) == 0
  end

  def square(num) do
    :math.pow(num, 2) |> round
  end

  def halve(num) do
    div(num, 2)
  end
end
