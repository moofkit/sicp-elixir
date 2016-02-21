defmodule Ex1_16_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_16.exs")

  test "result 1" do
    assert Ex1_16.result(2, 8) == :math.pow(2, 8)
  end

  test "result 2" do
    assert Ex1_16.result(9, 13) == :math.pow(9, 13)
  end

  test "result 3" do
    assert Ex1_16.result(2, 100) == :math.pow(2, 100)
  end
end
