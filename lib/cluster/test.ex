defmodule Cluster.Test do
  use GenServer

  def start_link(_opt) do
    GenServer.start_link(__MODULE__, [])
  end

  def init([]) do
    {:ok, []}
  end

  def handle_call(:get, _from, []), do: {:reply, :ok, []}

  def test(pid), do: GenServer.call(pid, :get)
end
