kill @a[tag=!tno.dead]

title @a[scores={tno.role=3}] subtitle "Arsonist has burned all players!"
title @a[scores={tno.role=3}] title [{"text":"YOU WON!","color":"green","bold":true}]
execute as @a[scores={tno.role=3}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

title @a[scores={tno.role=1..2}] subtitle "Arsonist has burned all players!"
title @a[scores={tno.role=1..2}] title [{"text":"YOU LOST!","color":"red","bold":true}]

tellraw @a [{"text":"Arsonists","color":"gold","bold":true},{"text":" have won the game!","color":"white","bold":false}]

tag @a remove tno.dead
tag @a remove tno.arsonist.doused

scoreboard players set $temp tno.state 3