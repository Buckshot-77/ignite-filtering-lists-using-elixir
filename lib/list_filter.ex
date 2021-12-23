defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(&filter_numbers/1)
    |> length()
  end

  defp filter_numbers(element) do
    case Integer.parse(element) do
      {number, _} -> rem(number, 2) != 0
      :error -> false
    end
  end
end
