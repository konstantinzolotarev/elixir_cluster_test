defmodule Cluster.OneSupervisor do
  use Supervisor

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: {:global, __MODULE__})
  end

  def start_child() do
    # This will start child by calling MyWorker.start_link(implicit_arg, foo, bar, baz)
    Supervisor.start_child(__MODULE__, [:ok])
  end

  def init(implicit_arg) do
    children = [
      worker(Cluster.Test, [])
    ]

    supervise(children, strategy: :simple_one_for_one)
  end
end
