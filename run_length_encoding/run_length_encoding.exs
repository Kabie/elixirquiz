defmodule RunLengthEncoding do
  @moduledoc """
  Given a string of uppercase characters in the range A-Z, replace
  runs of sequential characters with a single instance of that value
  preceded by the number of items in the run.
  """

  def encode(<<c>> <> rest_text) do
    _encode(rest_text, [{1, c}])
  end

  defp _encode(<<c>> <> rest_text, [{n, c} | rest]) do
    _encode(rest_text, [{n+1, c} | rest])
  end

  defp _encode(<<c>> <> rest_text, [{_, _c} | _] = rest) do
    _encode(rest_text, [{1, c} | rest])
  end

  defp _encode("", encoded) do
    encoded
    |> Enum.reverse
    |> Enum.map(fn {n, c} ->
      to_string(n) <> <<c>>
    end)
    |> Enum.join
  end

  def decode(text) do

  end

end

IO.puts RunLengthEncoding.encode("JJJTTWPPMMMMYYYYYYYYYVVVVVV")
IO.puts RunLengthEncoding.decode("3J2T1W2P4M9Y6V")
