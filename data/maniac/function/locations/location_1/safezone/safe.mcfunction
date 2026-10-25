##Очистка
 function maniac:in_game/event/safezone/danger
##Установка блоков телепортации

  setblock -61 7 -94 minecraft:magenta_glazed_terracotta[facing=west]

  setblock -16 7 -65 minecraft:magenta_glazed_terracotta[facing=north]
  setblock -17 7 -69 minecraft:magenta_glazed_terracotta[facing=east]
  setblock -13 7 -69 minecraft:magenta_glazed_terracotta[facing=west]

  setblock 28 5 -145 minecraft:magenta_glazed_terracotta[facing=south]
  setblock 20 6 -142 minecraft:magenta_glazed_terracotta[facing=east]
  setblock 27 6 -136 minecraft:magenta_glazed_terracotta[facing=north]

  setblock -18 6 -112 minecraft:magenta_glazed_terracotta[facing=east]
  setblock -12 6 -116 minecraft:magenta_glazed_terracotta[facing=west]

  setblock -20 7 -190 minecraft:magenta_glazed_terracotta[facing=north]
  setblock -12 14 -195 minecraft:magenta_glazed_terracotta[facing=west]
  setblock -14 14 -193 minecraft:magenta_glazed_terracotta[facing=north]

  setblock -15 1 -84 minecraft:magenta_glazed_terracotta[facing=south]
  setblock 10 3 -88 minecraft:magenta_glazed_terracotta[facing=east]
##Установка интеракшенов

  summon interaction -61 9 -94 {height:1.5,width:1,Tags:["safe_safezone"]}

  summon interaction -16 9 -65 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -17 9 -69 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -13 9 -69 {height:1.5,width:1,Tags:["safe_safezone"]}

  summon interaction 28 10 -145 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction 20 8 -142 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction 27 8 -136 {height:1.5,width:1,Tags:["safe_safezone"]}

  summon interaction -18 8 -112 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -12 8 -116 {height:1.5,width:1,Tags:["safe_safezone"]}

  summon interaction -20 9 -190 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -12 16 -195 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -14 16 -193 {height:1.5,width:1,Tags:["safe_safezone"]}

  summon interaction -15 3 -84 {height:2.5,width:1,Tags:["safe_safezone"]}
  summon interaction 10 5 -88 {height:1.5,width:1,Tags:["safe_safezone"]}