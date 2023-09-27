defmodule Crm.Repo.Migrations.ChangeUsersToUuid do
  use Ecto.Migration

  def change do
    rename table("users"), :id, to: :uid

  end
end
