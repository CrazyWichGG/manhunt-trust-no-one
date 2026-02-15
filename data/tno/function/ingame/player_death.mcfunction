execute if score @s tno.role matches 1 if score respawn_runner tno.config matches 1 run return run scoreboard players set @s tno.death 0
execute if score @s tno.role matches 2 if score respawn_hunter tno.config matches 1 run return run scoreboard players set @s tno.death 0

gamemode spectator @s
tag @s add tno.dead
tellraw @s [{"text":"You died! ","color":"red"},{"text":"Wait for the game to end to see the winner.","color":"white"}]

function tno:ingame/team_self_kill_check

scoreboard players set @s tno.death 0