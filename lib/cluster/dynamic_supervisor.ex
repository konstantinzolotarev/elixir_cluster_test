defmodule Cluster.DynamicSupervisor do
  use DynamicSupervisor

  @name TestSupervisor

  def start_link(arg) do
    DynamicSupervisor.start_link(__MODULE__, arg, name: {:global, __MODULE__})
  end

  def init(_arg) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

  def start_child do
    DynamicSupervisor.start_child(__MODULE__, {Cluster.Test, []})
  end
end
