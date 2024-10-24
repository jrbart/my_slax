defmodule SlaxWeb.RoomComponents do
  use Phoenix.Component

  import SlaxWeb.CoreComponents

  attr :form, Phoenix.HTML.Form, required: true
  attr :target, :any, default: nil
  
  def room_form(assigns) do
    ~H"""
      <.simple_form
        for={@form}
        id="room-form"
        phx-change="validate-room"
        phx-submit="save-room"
        phx-target={@target}
      >
        <.input field={@form[:name]} type="text" label="Name"/>
        <.input field={@form[:topic]} type="text" label="Topic"/>
        <:actions>
          <.button phx-disable-with="Saving..." class="w-full">Save</.button>
        </:actions>
      </.simple_form>
    """
  end
end
