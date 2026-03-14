scoreboard players add $tick tno.clock 1
execute if score $tick tno.clock matches 20 run function tno:config/locate_store
execute if score $tick tno.clock matches 20 run scoreboard players set $tick tno.clock 0