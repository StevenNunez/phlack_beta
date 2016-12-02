defmodule PhlackBeta.Room do
  use PhlackBeta.Web, :model

  schema "rooms" do
    field :name, :string
    field :slug, :string
    field :type, :string
    has_many :room_memberships, PhlackBeta.RoomMembership
    has_many :members, through: [:room_memberships, :user]

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :type])
    |> validate_required([:name, :type])
  end
end
