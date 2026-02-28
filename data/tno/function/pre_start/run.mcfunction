# set title times
title @a times 0 70 20

# runner title animation
execute if score $temp tno.pre_start_timer matches 0 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"RUNNER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 30 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"R","color":"green","bold":true},{"text":"UNNER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 30 as @a[scores={tno.role=1}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 35 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"RU","color":"green","bold":true},{"text":"NNER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 35 as @a[scores={tno.role=1}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 40 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"RUN","color":"green","bold":true},{"text":"NER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 40 as @a[scores={tno.role=1}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 45 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"RUNN","color":"green","bold":true},{"text":"ER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 50 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"RUNNE","color":"green","bold":true},{"text":"R","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 50 as @a[scores={tno.role=1}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $temp tno.pre_start_timer matches 55 run title @a[scores={tno.role=1}] subtitle [{"text":"Beat the game to win!","color":"white"}]
execute if score $temp tno.pre_start_timer matches 55 run title @a[scores={tno.role=1}] title [{"text":"ROLE: "},{"text":"RUNNER","color":"green","bold":true}]
execute if score $temp tno.pre_start_timer matches 55 as @a[scores={tno.role=1}] at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1


# hunter title animation
execute if score $temp tno.pre_start_timer matches 0 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"HUNTER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 30 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"H","color":"red","bold":true},{"text":"UNTER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 30 as @a[scores={tno.role=2}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 35 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"HU","color":"red","bold":true},{"text":"NTER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 35 as @a[scores={tno.role=2}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 40 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"HUN","color":"red","bold":true},{"text":"TER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 40 as @a[scores={tno.role=2}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 45 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"HUNT","color":"red","bold":true},{"text":"ER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 50 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"HUNTE","color":"red","bold":true},{"text":"R","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 50 as @a[scores={tno.role=2}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $temp tno.pre_start_timer matches 55 run title @a[scores={tno.role=2}] subtitle [{"text":"Eliminate all the runner to win!","color":"white"}]
execute if score $temp tno.pre_start_timer matches 55 run title @a[scores={tno.role=2}] title [{"text":"ROLE: "},{"text":"HUNTER","color":"red","bold":true}]
execute if score $temp tno.pre_start_timer matches 55 as @a[scores={tno.role=2}] at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1

# countdown numbers
execute if score $temp tno.pre_start_timer matches 160 run title @a subtitle ""
execute if score $temp tno.pre_start_timer matches 160 run title @a title {"text":"➌","color":"red"}
execute if score $temp tno.pre_start_timer matches 180 run title @a title {"text":"➋","color":"red"}
execute if score $temp tno.pre_start_timer matches 200 run title @a title {"text":"➊","color":"yellow"}
execute if score $temp tno.pre_start_timer matches 220 run title @a title {"text":"GO!","color":"green","bold":true}

# play sounds
execute if score $temp tno.pre_start_timer matches 160 as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 180 as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 200 as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 220 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

# change state
execute if score $temp tno.pre_start_timer matches 220.. run scoreboard players set $temp tno.state 2
# run start script
execute if score $temp tno.pre_start_timer matches 220.. run function tno:ingame/start

# increment pre-start timer
scoreboard players add $temp tno.pre_start_timer 1