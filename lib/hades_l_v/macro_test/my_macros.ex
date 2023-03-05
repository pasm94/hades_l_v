defmodule HadesLV.MacroTest.MyMacro do
  defmacro test_call([module, function, arg]) do
    quote bind_quoted: [function: function, module: module, arg: arg] do
      # module = unquote(module)
      # function = unquote(function)
      # arg = unquote(arg)
      # .(arg.(), module.()
      function = String.to_atom(function)

      if is_bitstring(arg) do
        apply(module, function, [arg, module, %{my_map: :my_map}])
      else
        apply(module, function, [arg, module])
      end

    end
  end
end
