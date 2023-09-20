defmodule Crm.Repo.Migrations.CreateUserTable do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string
      add :cpf, :string
      add :birthday, :date

      timestamps()
    end

    create unique_index(:users, [:email])

  end
end
