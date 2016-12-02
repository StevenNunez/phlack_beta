defmodule PhlackBeta.RoomMembershipTest do
  use PhlackBeta.ModelCase

  alias PhlackBeta.RoomMembership

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = RoomMembership.changeset(%RoomMembership{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = RoomMembership.changeset(%RoomMembership{}, @invalid_attrs)
    refute changeset.valid?
  end
end
