defmodule Insta.Follow do
  use Ecto.Schema
  import Ecto.Changeset

  schema "follows" do

    belongs_to :follower, Insta.Accounts.User
    belongs_to :followed, Insta.Accounts.User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(follow, attrs) do
    follow
    |> cast(attrs, [:follower_id, :followed_id])
    |> validate_required([:follower_id, :followed_id])
    |> unique_constraint([:follower_id, :followed_id])
  end
end
