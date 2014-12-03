defmodule RunLengthEncoding do
  @moduledoc """
  Given a string of uppercase characters in the range A-Z, replace
  runs of sequential characters with a single instance of that value
  preceded by the number of items in the run.
  """

  def encode(text) do

  end

  def decode(text) do

  end

end

IO.puts RunLengthEncoding.encode("JJJTTWPPMMMMYYYYYYYYYVVVVVV")
IO.puts RunLengthEncoding.decode("3J2T1W2P4M9Y6V")
