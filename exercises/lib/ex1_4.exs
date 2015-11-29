defmodule Ex1_4 do
  def result(a, b) do
    if(b > 0, do: &Kernel.+/2, else: &Kernel.-/2).(a, b)
  end
end
