defmodule Dogood.Models.Article do
  @derive [Poison.Encoder]
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :url, :string
    field :title, :string
    field :publisher, :string
    field :authors, {:array, :string}
    field :date_published, :utc_datetime
    field :keywords, {:array, :string}
    field :summary, :string
    field :read_time, :integer
    field :top_image_url, :string
    field :source, :string
    field :text, :string, virtual: true
    timestamps(inserted_at: :created_at)
  end

  def changeset(article, params \\ %{}) do
    article
    |> cast(params, [:url, :title, :authors, :publisher, :date_published,
      :keywords, :summary, :read_time, :top_image_url, :source])
    |> validate_required([:url, :publisher, :title])
    |> unique_constraint(:url)
    |> unique_constraint(:title)
  end
end