defmodule GerptTest do
  use ExUnit.Case
  doctest Gerpt

  test "greets the world" do
    assert Gerpt.hello() == :world
  end
end
