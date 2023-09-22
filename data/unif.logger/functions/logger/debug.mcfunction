# 写入 Cache
data remove storage unif.logger:cache Logger.Cache

$data modify storage unif.logger:cache Logger.Cache.Message set value $(msg)

$data modify storage unif.logger:cache Logger.Cache.Namespace set value $(namespace)

execute store result storage unif.logger:cache Logger.Cache.Time int 1 run time query daytime
execute store result storage unif.logger:cache Logger.Cache.Day int 1 run time query day

data modify storage unif.logger:cache Logger.Cache.LevelColor set value "yellow"
data modify storage unif.logger:cache Logger.Cache.Level set value "DEBUG"
data modify storage unif.logger:cache Logger.Cache.LevelInt set value 2

# 数据处理
function unif.logger:private/logger/cache_process

# 写入游戏 Logs 内
data modify storage unif.logger:debug_logs Logs append from storage unif.logger:cache Logger.Cache

# 打印
execute as @a[tag=unif.debug] if score $level unif.logger matches 2.. run function unif.logger:private/logger/printer with storage unif.logger:debug_logs Logs[-1]