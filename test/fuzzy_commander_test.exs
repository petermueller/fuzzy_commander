defmodule FuzzyCommanderTest do
  use ExUnit.Case
  doctest FuzzyCommander

  test "greets the world" do
    assert FuzzyCommander.hello() == :world
  end
end
