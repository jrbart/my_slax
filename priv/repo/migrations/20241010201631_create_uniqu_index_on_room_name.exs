defmodule Slax.Repo.Migrations.CreateUniquIndexOnRoomName do
  use Ecto.Migration

  def change do
    create unique_index(:rooms, :name)
  end
end