defmodule MyList do
  def reduce([], value, _), do: value
  def reduce([head|tail], value, func), do: reduce(tail, func.(head,value), func)
  # works def mapsum(list, func), do: reduce(_mapsum(list,func),0,&(&1 + &2))
  def mapsum(list, func), do: _mapsum(list,func) |> reduce(0, &(&1 + &2))
  defp _mapsum([], _), do: []
  defp _mapsum([head|tail], func), do: [func.(head)| _mapsum(tail,func)]
  def max([head|tail]), do: _max(tail,head)
  defp _max([], largest), do: largest
  defp _max([head|tail], largest) when head > largest do _max(tail,head) end
  defp _max([_|tail], largest), do: _max(tail,largest)
end
