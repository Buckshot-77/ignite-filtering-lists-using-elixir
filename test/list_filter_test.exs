defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "counts the odd numbers" do
    assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
  end
end
