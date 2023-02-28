defmodule HadesLVWeb.First.FirstLive do
  use Phoenix.LiveView

  alias HadesLVWeb.First.IncComponent

  def mount(_assing, _session, socket) do
    component_value = [1, 4, 10, 3]
    total = component_value |> Enum.sum()

    {:ok, assign(socket, component_value: component_value, total: total)}
  end

  def handle_info(:inc_parent, socket) do
    {:noreply, update(socket, :total, &(&1 + 1))}
  end

  def handle_event("save", %{"component" => component}, socket) do
    send_update(IncComponent, id: "inc-" <> component, inc: 1)
    {:noreply, update(socket, :total, &(&1 + 1))}
  end
end
