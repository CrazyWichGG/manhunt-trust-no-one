# reset all roles
scoreboard players set @a tno.role 0

# runner role assignment
execute as @r[tag=!tno.dead] run scoreboard players set @s tno.role 1

# arsonist role assignment (random chance)
execute if score role_arsonist tno.config matches 1 if predicate tno:chance_arsonist run scoreboard players set @r[scores={tno.role=0},tag=!tno.dead] tno.role 3

# other roles full random
execute as @a[scores={tno.role=0},tag=!tno.dead] store result score @s tno.role run random value 1..2

title @a[scores={tno.role=1},tag=!tno.dead] subtitle [{"text":"Beat the game to win!","color":"white"}]
title @a[scores={tno.role=1},tag=!tno.dead] title [{"text":"ROLE: "},{"text":"RUNNER","color":"green","bold":true}]

title @a[scores={tno.role=2},tag=!tno.dead] subtitle [{"text":"Eliminate the runner to win!","color":"white"}]
title @a[scores={tno.role=2},tag=!tno.dead] title [{"text":"ROLE: "},{"text":"HUNTER","color":"red","bold":true}]

title @a[scores={tno.role=3},tag=!tno.dead] subtitle [{"text":"Douse all the players and burn them to win!","color":"white"}]
title @a[scores={tno.role=3},tag=!tno.dead] title [{"text":"ROLE: "},{"text":"ARSONIST","color":"gold","bold":true}]

tellraw @a[scores={tno.role=1},tag=!tno.dead] [{"text":"Objective: ","color":"green"},{"text":"Beat the Ender Dragon before getting eliminated by the hunters","color":"white"}]
tellraw @a[scores={tno.role=2},tag=!tno.dead] [{"text":"Objective: ","color":"green"},{"text":"Eliminate all runners before they beat the Ender Dragon!","color":"white"}]
tellraw @a[scores={tno.role=3},tag=!tno.dead] [{"text":"Objective: ","color":"green"},{"text":"Douse all players with gasoline and burn them to death!","color":"white"}]

# reset arsonist
scoreboard players operation $cooldown tno.role.arsonist = arsonist_cooldown tno.config
tag @a remove tno.arsonist.doused

execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1

scoreboard players operation $countdown tno.config.interval_random_role = interval_random_role tno.config