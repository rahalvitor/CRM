defmodule Crm.User do
  use Ecto.Schema
  import Ecto.Changeset


  @required_fields [:name, :cpf]
  @optional_fields [:uid, :email, :birthday, :last_name]


  schema "users" do
    field :uid, Ecto.UUID, autogenerate: true
    field :name, :string
    field :last_name, :string
    field :email, :string
    field :cpf, :string
    field :birthday, :date
    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |>cast(params, @required_fields ++ @optional_fields)
    |>validate_required(@required_fields)
    |>unique_constraint(:uid)
    |>unique_constraint(:cpf)
  end
end
