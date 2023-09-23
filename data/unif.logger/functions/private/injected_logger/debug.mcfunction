data remove storage unif.logger:cache Cache.Logger

# Message, 放在这而不是 message_process 中为了防止过度转义
$data modify storage unif.logger:cache Cache.Logger.Message set value '$(msg)'

# 数据处理
function unif.logger:private/cache/remove_outdated
$function unif.logger:private/cache/injected_message_process {"namespace":"$(namespace)","level":"DEBUG","levelColor":"yellow"}

# 写入游戏 Logs 内
data modify storage unif.logger:debug_logs Logs append from storage unif.logger:cache Cache.Logger

# 打印
execute as @a[tag=unif.debug] if score $level unif.logger matches ..1 run function unif.logger:private/injected_logger/_injected_printer with storage unif.logger:debug_logs Logs[-1]