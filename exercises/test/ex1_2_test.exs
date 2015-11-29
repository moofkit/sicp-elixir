defmodule Ex1_2_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_2.exs")

  test "result" do
    assert Ex1_2.result == 14.8 / (-60)
  end
end
