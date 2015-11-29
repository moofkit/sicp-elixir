defmodule Ex1_3 do
  def result(a, b, c) do
    sum_of_sqr max(a, min(b,c)), max(b,c)
  end

  def sum_of_sqr(a, b), do: :math.pow(a, 2) + :math.pow(b, 2)
end
