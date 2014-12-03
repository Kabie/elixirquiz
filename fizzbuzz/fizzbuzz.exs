defmodule FizzBuzz do
  @moduledoc """
  Print the numbers from 1 to 100, replacing multiples of 3 with the word
  Fizz and multiples of 5 with the word Buzz. For numbers that are divisible
  by 3 and 5, replace the number with the word FizzBuzz.
  """
  def buzz(numbers, rules \\ [Fuzz: 3, Buzz: 5]) do
    _buzz({"", rules}, Enum.to_list(numbers), rules)
  end

  defp _buzz({s, rules}, [n | rest_numbers], [{bz, m} | rest_rules]) do
    if rem(n, m) == 0 do
      _buzz({s <> to_string(bz), rules}, [n | rest_numbers], rest_rules)
    else
      _buzz({s, rules}, [n | rest_numbers], rest_rules)
    end
  end

  defp _buzz({s, rules}, [n | numbers], []) do
    IO.puts if s == "", do: n, else: s
    _buzz({"", rules}, numbers, rules)
  end

  defp _buzz(_, [], _) do
  end

end

FizzBuzz.buzz 1..100
