defmodule Crm.Repo.Migrations.AddCpfUniqueIndex do
  use Ecto.Migration

  def change do
    create unique_index(:users, [:cpf])
  end
end
