defmodule Crm.Repo.Migrations.RecreateUserTable do
  use Ecto.Migration


  def change do
    drop table("users")

    create table(:users) do
      add :uid, :uuid, required: true
      add :cpf, :string, required: true
      add :birthday, :date
      add :name, :string, required: true
      add :last_name, :string

      timestamps()
    end

    create unique_index(:users, [:uid])
  end

end
