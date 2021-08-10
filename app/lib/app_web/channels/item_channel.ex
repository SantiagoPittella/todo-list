defmodule AuctionWeb.ItemChannel do
  use Phoenix.Channel

  def join("list:" <> _item_id, _params, socket) do
  {:ok, socket}
  end

 end
