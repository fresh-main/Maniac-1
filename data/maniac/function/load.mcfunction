data modify storage efm location_setting set value "location_index"
scoreboard objectives add global_data dummy
data modify storage efm boat set value {enabled:1b,x:54.0d,y:8.0d,z:-86.0d,yaw:0.0f}
scoreboard objectives add config dummy
scoreboard objectives add game_health dummy
scoreboard objectives add health health
scoreboard objectives add regeneration dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add refueling minecraft.custom:minecraft.use_cauldron
scoreboard objectives add stan_time dummy
scoreboard objectives add maniac_spoon_roll dummy
scoreboard objectives add death deathCount
scoreboard objectives add count_medkit_used dummy
scoreboard objectives add game_count dummy
scoreboard objectives add const dummy
scoreboard objectives add math dummy
scoreboard objectives add camera_break_time dummy
scoreboard objectives add pickup_timer dummy
scoreboard objectives add crowbar_cooldown dummy
scoreboard objectives add crowbar_seconds dummy
scoreboard objectives add crowbar_math dummy
scoreboard players set #20 crowbar_math 20
kill @e[tag=crowbar_hitbox]

# Стамина
scoreboard objectives add stamina dummy
scoreboard objectives add stamina.max dummy
scoreboard objectives add stamina.jump.consumption dummy
scoreboard objectives add stamina.sprint.consumption dummy
scoreboard objectives add stamina.regeneration dummy
scoreboard objectives add stamina.threshold.debuff dummy

scoreboard players set 10 const 10
scoreboard players set 60 const 60
scoreboard players set 2 const 2

execute unless score set_config config matches 1 run function maniac:config/set_config

setblock -154 -63 -2 barrel

function maniac:second
function maniac:particles_timer


team add maniac
team modify maniac color red
team modify maniac nametagVisibility never
team modify maniac seeFriendlyInvisibles false
team modify maniac friendlyFire false

team add peaceful
team modify peaceful color green
team modify peaceful nametagVisibility never
team modify peaceful seeFriendlyInvisibles false

team add police
team modify police color blue
team modify police nametagVisibility never
team modify police seeFriendlyInvisibles false
team modify police friendlyFire false

team add Hub
team modify Hub color gray
team modify Hub nametagVisibility hideForOtherTeams
team modify Hub seeFriendlyInvisibles true
team modify Hub friendlyFire false

bossbar add minecraft:timer "0:00"

gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doImmediateRespawn false
gamerule fallDamage false
