defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list), do: tl(list)

  def first(list), do: hd(list)

  def count(list), do: length(list)

  def functional_list?(list) do
    cond do
    	"Elixir" in list -> true
      true -> false
    end
  end
end
