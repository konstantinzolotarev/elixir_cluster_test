defmodule Cluster.Server do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: {:global, __MODULE__})
  end

  @doc false
  def init(_), do: {:ok, []}


  def say, do: GenServer.call({:global, __MODULE__}, :say)

  def get, do: GenServer.call({:global, __MODULE__}, :get)

  def handle_call(:say, _from, state) do
    number = :rand.uniform(10)
    {:reply, "number: #{inspect(number)}", state ++ [number]}
  end

  def handle_call(:get, _from, state), do: {:reply, state, state}
end
