defmodule Ex1_4_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_4.exs")

  test "1" do
    assert Ex1_4.result(2, 4) == 6
  end

  test "2" do
    assert Ex1_4.result(2, -4) == 6
  end
end
