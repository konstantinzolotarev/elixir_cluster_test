defmodule Cluster.Server do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: {:global, __MODULE__})
  end

  @doc false
  def init(_), do: {:ok, []}


  def say, do: GenServer.call({:global, __MODULE__}, :say)

  def handle_call(:say, _from, []) do
    number = :rand.uniform(10)
    {:reply, "number: #{inspect(number)}", []}
  end
end
