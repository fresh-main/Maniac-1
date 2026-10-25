execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item: "tube"}}}]}] if data storage efm switch{tube:1} run return run function maniac:objects/phone/tube/place
execute if data storage efm switch{hunt:1} run return run title @s actionbar {"text": "Надо дождаться прибытия полиции","color": "yellow"}
execute if data storage efm switch{tube:0} run return run function maniac:objects/phone/tube/get
