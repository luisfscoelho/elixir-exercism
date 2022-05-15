defmodule LogLevel do
  def to_label(level, _legacy? = true) do
    case level do
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      _ -> :unknown
    end
  end

  def to_label(level, _legacy? = false) do
    case level do
      0 -> :trace
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      5 -> :fatal
      _ -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    to_label(level, legacy?)
    |> case do
      :error -> :ops
      :fatal -> :ops
      :unknown when legacy? == true -> :dev1
      :unknown -> :dev2
      _ -> false
    end
  end
end
