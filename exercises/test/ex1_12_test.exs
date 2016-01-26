defmodule Ex1_12_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_12.exs")

  test "result" do
    assert Ex1_12.result(2, 1) == 1
    assert Ex1_12.result(4, 2) == 3
    assert Ex1_12.result(5, 3) == 6
    assert Ex1_12.result(5, 1) == 1
  end
end
