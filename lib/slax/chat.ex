defmodule Slax.Chat do
  import Ecto.Query

  alias Slax.Chat.Room
  alias  Slax.Repo

  def get_first_room! do
    Repo.one!(from r in Room, limit: 1, order_by: [asc: :name])
  end

  def get_room!(id) do
    Repo.get!(Room, id)
  end

  def list_rooms() do
    Repo.all(from r in Room, order_by: [asc: :name])
  end
end
