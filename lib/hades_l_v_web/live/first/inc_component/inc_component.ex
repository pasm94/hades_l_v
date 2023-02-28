defmodule HadesLVWeb.First.IncComponent do
  use Phoenix.LiveComponent

  def update(%{inc: value}, socket) do
    IO.inspect(socket)
    {:ok, update(socket, :value, &(&1 + value))}
  end

  def update(assign, socket) do
    {:ok, assign(socket, assign)}
  end

  def handle_event("increment", _, socket) do
    send(self(), :inc_parent)

    {:noreply, update(socket, :value, &(&1 + 1))}
  end
end
