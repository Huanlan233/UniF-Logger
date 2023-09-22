function unif.logger:logs/clear/clear_debug
execute as @a run function unif.logger:logger/debug {"msg":'"UniF-Logger was successfully loaded!"',"namespace":"UniF-Logger"}

scoreboard objectives add unif.logger dummy "Logger Settings"
execute unless score $level unif.logger = $level unif.logger run scoreboard players set $level unif.logger 1