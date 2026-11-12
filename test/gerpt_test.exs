defmodule GerptTest do
  import Gerpt
  use ExUnit.Case

  doctest Gerpt

  test "deduplicate() removes two of the same value" do
    deduplicated = deduplicate("some\nsome\nkey")
    assert deduplicated == %{"key" => 1, "some" => 2}
  end

end
