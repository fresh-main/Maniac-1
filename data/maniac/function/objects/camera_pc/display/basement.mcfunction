data modify entity @n[tag=CameraDisplay] variant set value "minecraft:basement"
tp @n[tag=camera_interaction_1] -120.34375 11.64375 14.11
tp @n[tag=camera_interaction_2] -121.03125 12.39375 14.11
tp @n[tag=camera_interaction_3] -121.21875 11.70625 14.11
tp @n[tag=camera_interaction_4] -121.59375 11.39375 14.11

tp @n[tag=camera_interaction_5] -121.71875 11.26875 14.21
tp @n[tag=camera_interaction_6] -121.46875 12.39375 14.21
tp @n[tag=camera_interaction_7] -120.40625 11.95625 14.21
tp @n[tag=camera_interaction_8] -120.71875 10.89375 14.21

tp @n[tag=camera_interaction_9] -122.09375 10.89375 14.21
tp @n[tag=camera_interaction_10] -121.46875 11.39375 14.21
tp @n[tag=camera_interaction_11] -120.84375 11.51875 14.21
tp @n[tag=camera_interaction_12] -120.34375 12.26875 14.21

data modify entity @n[tag=floor_two_text] text set value '{"text": "2 Этаж", "underlined": false}'
data modify entity @n[tag=floor_one_text] text set value '{"text": "1 Этаж", "underlined": false}'
data modify entity @n[tag=basement_text] text set value '{"text": "Подвал", "underlined": true}'

function maniac:objects/camera_pc/display/text_update