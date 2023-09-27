defmodule Crm.Repo.Migrations.RecreateUserTable do
  use Ecto.Migration


  def up do
    drop table("users")
  end

  def down do
    create table(:users, primary_key: false) do
      add :uid, :uuid, required: true, primary_key: true
      add :cpf, :string, required: true
      add :birthday, :date
      add :name, :string, required: true
      add :last_name, :string

      timestamps()
    end

    create unique_index(:users, [:uid])
  end

end
