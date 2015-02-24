defmodule Chop do
  def guess(actual, range) do
    lower..upper = range
    i = div(lower + upper,2)
    IO.puts("Is it #{i}")
    _makeGuess(actual,range,i)
  end

  defp _makeGuess(actual,_, guess) when actual == guess do actual end
  defp _makeGuess(actual, _..u, guess) when actual > guess do guess(actual, guess+1..u) end
  defp _makeGuess(actual, l.._, guess), do: guess(actual, l..guess - 1)
end
