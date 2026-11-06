execute on attacker as @s[team=!maniac] run return fail
execute as @s[tag=player_doll] run function maniac:objects/camera/attack_on_camera
execute as @s[tag=camera_break_interaction] run function maniac:objects/camera/break/select_target
data remove entity @s attack