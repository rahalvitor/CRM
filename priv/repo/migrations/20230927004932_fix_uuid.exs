defmodule Crm.Repo.Migrations.FixUuid do
  use Ecto.Migration

  def change do
    alter table("users") do
      modify :uid, :uuid, required: true
    end

  end
end
