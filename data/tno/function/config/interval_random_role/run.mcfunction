# scoreboard setup
scoreboard objectives add tno.config.interval_random_role dummy

# set default value to config value if not set
execute unless score $countdown tno.config.interval_random_role = $countdown tno.config.interval_random_role run scoreboard players operation $countdown tno.config.interval_random_role = interval_random_role tno.config


execute if score $countdown tno.config.interval_random_role matches 200 run tellraw @a [{"text":"Randomizing roles in 10 seconds","color":"yellow"}]
execute if score $countdown tno.config.interval_random_role matches 100 run tellraw @a [{"text":"Randomizing roles in 5 seconds","color":"yellow"}]
execute if score $countdown tno.config.interval_random_role matches 80 run tellraw @a [{"text":"Randomizing roles in 4 seconds","color":"yellow"}]
execute if score $countdown tno.config.interval_random_role matches 60 run tellraw @a [{"text":"Randomizing roles in 3 seconds","color":"yellow"}]
execute if score $countdown tno.config.interval_random_role matches 40 run tellraw @a [{"text":"Randomizing roles in 2 seconds","color":"yellow"}]
execute if score $countdown tno.config.interval_random_role matches 20 run tellraw @a [{"text":"Randomizing roles in 1 second","color":"yellow"}]

execute if score $countdown tno.config.interval_random_role matches 200 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $countdown tno.config.interval_random_role matches 100 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $countdown tno.config.interval_random_role matches 80 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $countdown tno.config.interval_random_role matches 60 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $countdown tno.config.interval_random_role matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $countdown tno.config.interval_random_role matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown tno.config.interval_random_role matches 0 run function tno:config/interval_random_role/random_role

# decrease timer
scoreboard players remove $countdown tno.config.interval_random_role 1