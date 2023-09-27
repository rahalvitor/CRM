defmodule Crm.User do
  use Ecto.Schema
  import Ecto.Changeset


  @required_fields [:name, :cpf]
  @optional_fields [:uid, :birthday, :last_name]

  @primary_key {:uid, :binary_id, autogenerate: true}
  schema "users" do
    field :name, :string
    field :last_name, :string
    field :cpf, :string
    field :birthday, :date
    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |>cast(params, @required_fields ++ @optional_fields)
    |>validate_required(@required_fields)
    |>unique_constraint(:uid)
    |>unique_constraint(:cpf, message: "CPF Must be unique")
  end
end
