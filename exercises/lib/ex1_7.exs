defmodule Ex1_7 do
  def result(x) do
    sqrt_iter 1.0, x
  end

  def improved_result(x) do
    improved_sqrt_iter 1.0, 0.5, x
  end

  def sqrt_iter(guess, x) do
    if good_enough?(guess, x) do 
      guess
    else
      sqrt_iter improve(guess, x), x
    end
  end

  def improved_sqrt_iter(prev_guess, guess, x) do
    if improved_good_enough?(prev_guess, guess) do
      guess
    else
      improved_sqrt_iter guess, improve(guess, x), x
    end
  end

  def improve(guess, x), do: average(guess, x / guess)

  def average(x, y), do: (x + y) / 2

  def good_enough?(guess, x), do: abs(:math.pow(guess, 2) - x) < 0.001

  def improved_good_enough?(prev_guess, guess), do: abs(prev_guess - guess) < 0.001
end
