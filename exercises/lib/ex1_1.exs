defmodule Ex1_1 do
  import IO

  def result do
    puts 10 # 10
    puts 5 + 3 + 4 # 12
    puts 9 - 1 # 8
    puts 6 / 2 # 3.0
    puts 2 * 4 + (4 - 6) # 6

    puts a = 3 # 3

    puts b = a + 1 # 4

    puts a + b + a * b # 19

    puts a == b # false

    puts (if b > a && b < a * b do # 4
            b 
          else
            a
          end)

    puts (cond do # 16
      a == 4 ->
        6
      b == 4 ->
        6 + 7 + a
      true ->
        25
    end)

    puts (2 + if b > a do b else a end) # 6

    puts (a + 1 * cond do # 7
                    a > b ->
                      a
                    a < b ->
                      b
                    true ->
                      -1
                  end
    )
  end
end

Ex1_1.result