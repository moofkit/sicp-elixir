defmodule Ex1_11_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_11.exs")

  test "recursive process" do
    assert Ex1_11.recursive(5) == 11
    assert Ex1_11.recursive(10) == 230
    # assert Ex1_11.recursive(100) == 65536
    # test timed out after 60000ms
  end

  test "iterative process" do
    assert Ex1_11.iterative(5) == 11
    assert Ex1_11.iterative(10) == 230
    assert Ex1_11.iterative(100) == 151404293106684183601223222
  end
end