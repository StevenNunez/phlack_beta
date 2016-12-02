defmodule PhlackBeta.RoomMembership do
  use PhlackBeta.Web, :model

  schema "room_memberships" do
    belongs_to :room, PhlackBeta.Room
    belongs_to :user, PhlackBeta.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
