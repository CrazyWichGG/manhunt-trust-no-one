title @a[scores={tno.role=1}] subtitle "The Ender Dragon has been defeated!"
title @a[scores={tno.role=1}] title [{"text":"YOU WON!","color":"green","bold":true}]
execute as @a[scores={tno.role=1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

title @a[scores={tno.role=2}] subtitle "The Ender Dragon has been defeated!"
title @a[scores={tno.role=2}] title [{"text":"YOU LOST!","color":"red","bold":true}]

tellraw @a [{"text":"Runners","color":"green","bold":true},{"text":" have won the game!","color":"white","bold":false}]

tag @a remove tno.dead

scoreboard players set $temp tno.state 3