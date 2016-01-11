defmodule Ex1_7_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_7.exs")

  test "1" do
    assert Ex1_7.result(9) == 3.00009155413138
  end

  test "2" do
    assert Ex1_7.result(0.000001) == 0.031260655525445276
  end

  test "3" do
    assert_in_delta(Ex1_7.improved_result(9), 3.0, 0.001)
  end

  test "4" do
    assert_in_delta(Ex1_7.improved_result(0.000001), 0.001, 0.001)
  end
end
