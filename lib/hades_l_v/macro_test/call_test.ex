defmodule HadesLV.MacroTest.CallTest do
  alias HadesLV.MacroTest.MyMacro

  require MyMacro

  def my_function(arg) do
    function = "my_other_function"
    module = __MODULE__

    MyMacro.test_call([module, function, arg])
  end

  def my_other_function(arg, module) do
    IO.inspect(module)
    IO.inspect(arg)
    IO.puts("2 ARGS CALLED")
  end

  def my_other_function(arg, module, when_arg_is_string) do
    IO.inspect(when_arg_is_string)
    IO.inspect(module)
    IO.inspect(arg)
    IO.puts("3 ARGS CALLED")
  end
end
