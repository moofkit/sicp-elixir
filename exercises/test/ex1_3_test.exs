defmodule Ex1_3Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_3.exs")

  test "1" do
    assert Ex1_3.result(2, 4, 5) == 41
  end

  test "2" do
    assert Ex1_3.result(1, 8, 1) == 65
  end

  test "3" do
    assert Ex1_3.result(8, 1, 8) == 128
  end
end
