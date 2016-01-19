defmodule Ex1_10_Test do
  use ExUnit.Case, async: true
  Code.load_file("./lib/ex1_10.exs")

  test "accerman" do
    assert Ex1_10.accerman(1, 10) == 1024
    assert Ex1_10.accerman(2, 4) == 65536
    assert Ex1_10.accerman(3, 3) == 65536
  end

  test "f n" do
    assert Ex1_10.f(1) == 2
    assert Ex1_10.f(2) == 4
    assert Ex1_10.f(3) == 6
    assert Ex1_10.f(4) == 8
    assert Ex1_10.f(5) == 10
    # f(n) = 2*n
  end

  test "g n" do
    assert Ex1_10.g(1) == 2
    assert Ex1_10.g(2) == 4
    assert Ex1_10.g(3) == 8
    assert Ex1_10.g(4) == 16
    assert Ex1_10.g(5) == 32
    # g(n) = 2^n
  end

  test "h n" do
    assert Ex1_10.h(1) == 2
    assert Ex1_10.h(2) == 4
    assert Ex1_10.h(3) == 16
    assert Ex1_10.h(4) == 65536
    # h(n)=2^2^2...n times
  end
end
