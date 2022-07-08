defmodule DurationFormatter do
  @second 1
  @minute 60
  @hour 3600
  @day 86400
  @year 31536000

  def format_duration(0), do: "now"
  def format_duration(@second), do: "1 second"
  def format_duration(@minute), do: "1 minute"
  def format_duration(@hour), do: "1 hour"
  def format_duration(@day), do: "1 day"
  def format_duration(@year), do: "1 year"
  def format_duration(_, 0), do: 0
  def format_duration(@second, 1), do: format_duration(@second)
  def format_duration(@second, val), do: "#{val} seconds"
  def format_duration(@minute, 1), do: format_duration(@minute)
  def format_duration(@minute, val), do: "#{val} minutes"
  def format_duration(@hour, 1), do: format_duration(@hour)
  def format_duration(@hour, val), do: "#{val} hours"
  def format_duration(@day, 1), do: format_duration(@day)
  def format_duration(@day, val), do: "#{val} days"
  def format_duration(@year, 1), do: format_duration(@year)
  def format_duration(@year, val), do: "#{val} years"
  def format_duration(seconds) when is_number(seconds) do
    [@year, @day, @hour, @minute, @second]
    |> Enum.reduce([seconds], fn unit, [remaining_secs | acc]->
      result = trunc(remaining_secs / unit)
      [(remaining_secs - result * unit), format_duration(unit, result)] ++ acc
    end)
    |> Enum.filter(&(&1 > 0))
    |> format_duration
  end
  def format_duration([h | []]), do: h
  def format_duration([h | t]), do: (Enum.reverse(t) |> Enum.join(", ")) <> " and #{h}"


end
