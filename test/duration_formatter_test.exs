defmodule DurationFormatterTest do
  use ExUnit.Case

  alias DurationFormatter
  import DurationFormatter, only: [format_duration: 1]

  @moduletag :capture_log

  doctest DurationFormatter

  test "module exists" do
    assert is_list(DurationFormatter.module_info())
  end

  test "format_duration" do
    assert format_duration(1) == "1 second"
    assert format_duration(62) == "1 minute and 2 seconds"
    assert format_duration(120) == "2 minutes"
    assert format_duration(3600) == "1 hour"
    assert format_duration(3662) == "1 hour, 1 minute and 2 seconds"
  end
end
