defmodule MyList do
  def sum([], total), do: total
  def sum([head|tail], total), do: sum(tail, head + total)
  def sum2([head|tail]), do: _sum2([head|tail],0)
  defp _sum2([], total), do: total
  defp _sum2([head|tail], total), do: _sum2(tail,head + total)
end
