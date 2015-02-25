defmodule Test do
  def all?([], _), do: true
  def all?([head|tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end
  def each([], _), do: :ok
  def each([head|tail], func) do
    func.(head)
    each(tail,func)
  end
  def split(list, n) do
     {
       _take(list,n),
       _reverse(_take(_reverse(list,[]), length(list) - n),[])
     }
   end
  defp _take([], _)            do [] end
  defp _take(_, n) when n <= 0 do [] end
  defp _take([x|xs], n)        do [ x | _take(xs,n-1) ] end
  defp _reverse([],ys)      do ys end
  defp _reverse([x|xs], ys) do _reverse(xs, [x|ys]) end
end
