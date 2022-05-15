defmodule Lasagna do
  @expected_minutes_in_oven 40
  @time_to_prepare_a_layer 2

  def expected_minutes_in_oven(), do: @expected_minutes_in_oven

  def remaining_minutes_in_oven(current_minute), do: expected_minutes_in_oven() - current_minute

  def preparation_time_in_minutes(layers), do: @time_to_prepare_a_layer * layers

  def total_time_in_minutes(layers, minutes_in_oven) do
    preparation_time_in_minutes(layers) + minutes_in_oven
  end

  def alarm(), do: "Ding!"
end
