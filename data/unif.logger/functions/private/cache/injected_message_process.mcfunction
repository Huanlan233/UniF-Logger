# Namespace
$data modify storage unif.logger:cache Logger.Cache.Namespace set value $(namespace)

# LevelColor
$data modify storage unif.logger:cache Logger.Cache.LevelColor set value $(levelColor)

# Level
$data modify storage unif.logger:cache Logger.Cache.Level set value $(level)

# Time
execute store result storage unif.logger:cache Logger.Cache.Time int 1 run time query daytime
execute store result storage unif.logger:cache Logger.Cache.Day int 1 run time query day

# 对过大数据进行处理
data modify storage unif.logger:cache Logger.Cache.Namespace set string storage unif.logger:cache Logger.Cache.Namespace 0 64
data modify storage unif.logger:cache Logger.Cache.Message set string storage unif.logger:cache Logger.Cache.Message 0 256

scoreboard objectives remove unif.10000