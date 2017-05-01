Code.load_file("hello_world.exs", __DIR__)

ExUnit.start
ExUnit.configure trace: true, exclude: :pending

defmodule HelloWorldTest do
  use ExUnit.Case, async: true

  test "it can say hello to the correct person" do
    assert HelloWorld.greet("David") == "Hello, David!"
  end

  @tag :pending
  test "it always capitalises the name correctly" do
    assert HelloWorld.greet("david") == "Hello, David!"
  end

  @tag :pending
  test "it can greet people in multiple languages" do
    assert HelloWorld.greet("SEBASTIÁN", "es") == "¡Hola, Sebastián!"
    assert HelloWorld.greet("julien", "fr") == "Bonjour, Julien!"
  end
end

