# 写入 Cache
data remove storage unif.logger:cache Logger.Cache

$data modify storage unif.logger:cache Logger.Cache.Message set value $(msg)

$data modify storage unif.logger:cache Logger.Cache.Namespace set value $(namespace)

execute store result storage unif.logger:cache Logger.Cache.Time int 1 run time query daytime
execute store result storage unif.logger:cache Logger.Cache.Day int 1 run time query day

data modify storage unif.logger:cache Logger.Cache.LevelColor set value "dark_red"
data modify storage unif.logger:cache Logger.Cache.Level set value "ERROR"

# 数据处理
function unif.logger:private/cache/message_process

# 写入游戏 Logs 内
data modify storage unif.logger:logs Logs append from storage unif.logger:cache Logger.Cache
data modify storage unif.logger:error_logs Logs append from storage unif.logger:cache Logger.Cache

# 打印
execute as @a[tag=unif.debug] if score $level unif.logger matches ..4 run function unif.logger:private/logger/_injected_printer with storage unif.logger:error_logs Logs[-1]