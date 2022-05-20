defmodule BirdCount do
  def today([]), do: nil
  def today(list), do: hd(list)

  def increment_day_count([head | tail]), do: [head + 1] ++ tail
  def increment_day_count([]), do: [1]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head | _]) when head == 0, do: true
  def has_day_without_birds?([_ | tail]),do: has_day_without_birds?(tail)

  def total(list, acc \\ 0)
  def total([head | tail], acc), do: total(tail, acc + head)
  def total([], acc), do: acc

  def busy_days(list, days \\ 0)
  def busy_days([head | tail], days) when head >= 5, do: busy_days(tail, days + 1)
  def busy_days([_ | tail], days), do: busy_days(tail, days)
  def busy_days([], days), do: days
end
