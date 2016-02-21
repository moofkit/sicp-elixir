defmodule Ex1_17_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_17.exs")

  test "result 1" do
    assert Ex1_17.result(2, 8) == 16
  end

  test "result 2" do
    assert Ex1_17.result(3, 7) == 21
  end

  test "result 3" do
    assert Ex1_17.result(9, 9) == 81
  end

  test "result 4" do
    assert Ex1_17.result(9, 10000) == 90000
  end
end
