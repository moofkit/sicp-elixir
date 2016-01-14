defmodule Ex1_8 do

  def result(x) do
    cube_root_iter 1.0, 0.5, x
  end

  def cube_root_iter(prev_guess, guess, x) do
    if good_enough?(prev_guess, guess) do
      guess
    else
      cube_root_iter guess, improve(guess, x), x
    end
  end

  def improve(guess, x), do: (x / :math.pow(guess, 2) + 2 * guess) / 3

  def good_enough?(prev_guess, guess), do: abs(prev_guess - guess) < 0.001
end
