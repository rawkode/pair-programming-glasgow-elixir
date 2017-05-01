defmodule HelloWorld do
  def greet(name \\ "world") do
    "Hello, #{name}!"
  end
end
