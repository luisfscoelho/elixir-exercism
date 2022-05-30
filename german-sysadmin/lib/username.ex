defmodule Username do
  def sanitize(username) do
    username
    |> Enum.map(&sanitaze_char/1)
    |> List.flatten()
  end
 
  defp sanitaze_char(char) do
    case char do
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?ß -> 'ss'
      ?_ -> char
      char when char in ?a..?z -> char
      _ -> ''
    end
  end
end
