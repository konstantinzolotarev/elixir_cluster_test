# Cluster

```bash
$ mix compile
$ iex --sname a -pa _build/dev/lib/cluster/ebin --app cluster --erl "-config ./config/a.config"
$ iex --sname b -pa _build/dev/lib/cluster/ebin --app cluster --erl "-config ./config/b.config"
$ iex --sname c -pa _build/dev/lib/cluster/ebin --app cluster --erl "-config ./config/c.config"
```
