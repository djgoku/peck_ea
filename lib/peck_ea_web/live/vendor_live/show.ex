defmodule PeckEaWeb.VendorLive.Show do
  use PeckEaWeb, :live_view

  alias PeckEa.PeckEA

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:vendor, PeckEA.get_vendor!(id))}
  end

  defp page_title(:show), do: "Show Vendor"
  defp page_title(:edit), do: "Edit Vendor"
end
