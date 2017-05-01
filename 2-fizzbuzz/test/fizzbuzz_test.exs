defmodule FizzBuzzTest do
  use ExUnit.Case, async: true

  import FizzBuzz

  test "it will return the original number when it is not divisable by 3 or 5" do
    assert fizzbuzz(1) == 1
    assert fizzbuzz(2) == 2
  end

  @tag :pending
  test "it will return :fizz when a number is cleanly divisable by 3" do
    assert fizzbuzz(3) == :fizz
  end

  @tag :pending
  test "it will return :buzz when a number is cleanly divisable by 5" do
    assert fizzbuzz(5) == :buzz
  end

  @tag :pending
  test "it will return :fizzbuzz when a number is cleanly divisable by 3 and 5" do
    assert fizzbuzz(15) == :fizzbuzz
  end
end
