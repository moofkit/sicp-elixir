defmodule Ex1_8_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_8.exs")

  test "1" do
    assert Ex1_8.result(8) == 2.0000000000380607
  end

  test "2" do
    assert Ex1_8.result(27) == 3.000000000023769
  end

  test "3" do
    assert Ex1_8.result(1000000) == 100
  end
end
