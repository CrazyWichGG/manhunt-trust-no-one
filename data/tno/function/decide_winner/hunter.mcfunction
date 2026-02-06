title @a[scores={tno.role=2}] subtitle "All runners have been eliminated!"
title @a[scores={tno.role=2}] title [{"text":"YOU WON!","color":"green","bold":true}]
execute as @a[scores={tno.role=2}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

title @a[scores={tno.role=1}] subtitle "Your team has been eliminated!"
title @a[scores={tno.role=1}] title [{"text":"YOU LOST!","color":"red","bold":true}]

tellraw @a [{"text":"Hunters","color":"red","bold":true},{"text":" have won the game!","color":"white","bold":false}]

tag @a remove tno.dead

scoreboard players set $temp tno.state 3