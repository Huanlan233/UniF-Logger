execute as @a run function unif.logger:logger/debug {"msg":'"Info Test"',"namespace":"UniF-Logger"}
execute as @a run function unif.logger:logger/info {"msg":'"Info Test"',"namespace":"UniF-Logger"}
execute as @a run function unif.logger:logger/warn {"msg":'"Warn Test"',"namespace":"UniF-Logger"}
execute as @a run function unif.logger:logger/error {"msg":'"Error Test"',"namespace":"UniF-Logger"}

execute as @a run function unif.logger:logger/injected/debug {"msg":"'{\"text\":\"Injected Info Test\"}'","namespace":"UniF-Logger"}