# UniF-Logger

## Usage

Before it, you must tag yourself `unif.debug`.

### Logger

UniF-Logger is a datapack to print logs.

This is a simple example to print a info log.

```mcfunction
function unif.logger:logger/info {"msg": '"Here\'s some messages!"', "namespace": "Test"}
```

And then, it will print a log.

![](https://z1.ax1x.com/2023/09/22/pPo6Qw4.png)

### Injected Logger

This is a simple example to print a injected info log.

**Warning: Injected Logger can inject clickable JSON fields like clickEvent.**.

```mcfunction
function unif.logger:logger/injected/info {"msg": "'{\"text\":\"Injected Info Test\"}'", "namespace": "Test"}
```

![](https://z1.ax1x.com/2023/09/22/pPoHYLj.png)

```mcfunction
function unif.logger:logger/injected/info {"msg": "'{\"text\":\"Injected Info Test\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"aa\"}}'", "namespace": "Test"}
```

![](https://z1.ax1x.com/2023/09/22/pPoH0YV.png)