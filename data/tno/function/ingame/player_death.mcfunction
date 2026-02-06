gamemode spectator @s
tag @s add tno.dead
tellraw @s [{"text":"You died! ","color":"red"},{"text":"Wait for the game to end to see the winner.","color":"white"}]

function tno:ingame/team_self_kill_check

scoreboard players set @s tno.death 0