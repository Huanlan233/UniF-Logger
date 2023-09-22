scoreboard objectives add unif.10000 dummy "Cache"
gamerule maxCommandChainLength 2147483647

data remove storage unif.logger:cache Logs

data modify storage unif.logger:cache Logs set from storage unif.logger:logs Logs

function unif.logger:private/logger/reader

scoreboard objectives remove unif.10000
gamerule maxCommandChainLength 65536