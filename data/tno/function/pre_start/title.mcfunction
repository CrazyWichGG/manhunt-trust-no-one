# set title times
title @a times 0 70 20

# runner title animation
execute if score $temp tno.pre_start_timer matches 0 run title @a[scores={tno.role=1}] title [{"text":"RUNNER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 20 run title @a[scores={tno.role=1}] title [{"text":"R","color":"green","bold":true},{"text":"UNNER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 25 run title @a[scores={tno.role=1}] title [{"text":"RU","color":"green","bold":true},{"text":"NNER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 30 run title @a[scores={tno.role=1}] title [{"text":"RUN","color":"green","bold":true},{"text":"NER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 35 run title @a[scores={tno.role=1}] title [{"text":"RUNN","color":"green","bold":true},{"text":"ER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 40 run title @a[scores={tno.role=1}] title [{"text":"RUNNE","color":"green","bold":true},{"text":"R","color":"white","obfuscated":true,"bold":true}]

execute if score $temp tno.pre_start_timer matches 45 run title @a[scores={tno.role=1}] subtitle [{"text":"Beat the game to win!","color":"white"}]
execute if score $temp tno.pre_start_timer matches 45 run title @a[scores={tno.role=1}] title [{"text":"RUNNER","color":"green","bold":true}]

# hunter title animation
execute if score $temp tno.pre_start_timer matches 0 run title @a[scores={tno.role=2}] title [{"text":"HUNTER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 20 run title @a[scores={tno.role=2}] title [{"text":"H","color":"red","bold":true},{"text":"UNTER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 25 run title @a[scores={tno.role=2}] title [{"text":"HU","color":"red","bold":true},{"text":"NTER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 30 run title @a[scores={tno.role=2}] title [{"text":"HUN","color":"red","bold":true},{"text":"TER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 35 run title @a[scores={tno.role=2}] title [{"text":"HUNT","color":"red","bold":true},{"text":"ER","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 40 run title @a[scores={tno.role=2}] title [{"text":"HUNTE","color":"red","bold":true},{"text":"R","color":"white","obfuscated":true,"bold":true}]
execute if score $temp tno.pre_start_timer matches 45 run title @a[scores={tno.role=2}] subtitle [{"text":"Eliminate the runner to win!","color":"white"}]
execute if score $temp tno.pre_start_timer matches 45 run title @a[scores={tno.role=2}] title [{"text":"HUNTER","color":"red","bold":true}]

# countdown numbers
execute if score $temp tno.pre_start_timer matches 105 run title @a subtitle ""
execute if score $temp tno.pre_start_timer matches 105 run title @a title {"text":"➌","color":"red"}
execute if score $temp tno.pre_start_timer matches 125 run title @a title {"text":"➋","color":"red"}
execute if score $temp tno.pre_start_timer matches 145 run title @a title {"text":"➊","color":"yellow"}
execute if score $temp tno.pre_start_timer matches 165 run title @a title {"text":"GO!","color":"green","bold":true}

# play sounds
execute if score $temp tno.pre_start_timer matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 25 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 30 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 35 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $temp tno.pre_start_timer matches 45 as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1

execute if score $temp tno.pre_start_timer matches 105 as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 125 as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 145 as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1
execute if score $temp tno.pre_start_timer matches 165 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

# change state
execute if score $temp tno.pre_start_timer matches 165.. run scoreboard players set $temp tno.state 2

# clear effects
execute if score $temp tno.pre_start_timer matches 165.. run effect clear @a

# increment pre-start timer
scoreboard players add $temp tno.pre_start_timer 1