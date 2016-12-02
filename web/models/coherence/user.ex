defmodule PhlackBeta.User do
  use PhlackBeta.Web, :model
  use Coherence.Schema

  schema "users" do
    field :name, :string
    field :email, :string
    has_many :room_memberships, PhlackBeta.RoomMembership
    has_many :rooms, through: [:room_memberships, :room]
    coherence_schema

    timestamps
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:name, :email] ++ coherence_fields)
    |> validate_required([:name, :email])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> validate_coherence(params)
  end
end
