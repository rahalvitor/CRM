defmodule CRM.User do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:id, :name, :email, :cpf, :birthday, :last_name]
  @primary_key {:id, :binary_id, autogenerate: true }

  schema "users" do
    field :name, :string
    field :last_name, :string
    field :email, :string
    field :cpf, :string
    field :birthday, :date
    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |>cast(params,  @fields)

  end
end
