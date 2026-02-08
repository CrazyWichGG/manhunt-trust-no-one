# scoreboards
scoreboard objectives add tno.state dummy
scoreboard players set $temp tno.state 0

scoreboard objectives add tno.role dummy
scoreboard players reset @a tno.role

scoreboard objectives add tno.pre_start_timer dummy
scoreboard players set $temp tno.pre_start_timer 0

scoreboard objectives add tno.death deathCount
scoreboard players reset @a tno.death

scoreboard objectives add tno.end_load_time dummy
scoreboard players set $temp tno.end_load_time 0

## config
scoreboard objectives add tno.config dummy
scoreboard players set spread_players tno.config 0

# bossbars
bossbar add tno:role.runner ""
bossbar set tno:role.runner name [{"text":"You are a ","color":"white"},{"text":"Runner","color":"green","bold":true}]
bossbar set tno:role.runner max 1
bossbar set tno:role.runner value 1
bossbar set tno:role.runner color green
bossbar set tno:role.runner style notched_12
bossbar set tno:role.runner visible true

bossbar add tno:role.hunter ""
bossbar set tno:role.hunter name [{"text":"You are a ","color":"white"},{"text":"Hunter","color":"red","bold":true}]
bossbar set tno:role.hunter max 1
bossbar set tno:role.hunter value 1
bossbar set tno:role.hunter color red
bossbar set tno:role.hunter style notched_12
bossbar set tno:role.hunter visible true

# gamerules
execute in minecraft:overworld run gamerule show_advancement_messages false
execute in minecraft:the_nether run gamerule show_advancement_messages false
execute in minecraft:the_end run gamerule show_advancement_messages false

execute in minecraft:overworld run gamerule show_death_messages false
execute in minecraft:the_nether run gamerule show_death_messages false
execute in minecraft:the_end run gamerule show_death_messages false
