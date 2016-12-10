defmodule Ex1_19_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_19.exs")

  test "result 1" do
    assert Ex1_19.result(0) == 0
  end

  test "result 2" do
    assert Ex1_19.result(1) == 1
  end

  test "result 3" do
    assert Ex1_19.result(2) == 1
  end

  test "result 3" do
    assert Ex1_19.result(10) == 55
  end

  test "result 4" do
    assert Ex1_19.result(100) == 354224848179261915075
  end
end
