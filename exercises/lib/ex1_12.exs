defmodule Ex1_12 do
  def result(row, col) do
    cond do
      row == 1 ->
        1
      col == 1 ->
        1
      row == col ->
        1
      row < 1 ->
        0
      col < 1 ->
        0
      col > row ->
        0
      true ->
        (result(row - 1, col) + result(row - 1, col - 1))
    end
  end
end
