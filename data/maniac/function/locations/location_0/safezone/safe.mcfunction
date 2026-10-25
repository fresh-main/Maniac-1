##Очистка
 function maniac:in_game/event/safezone/danger
##Установка блоков телепортации
 #Второй этаж
  setblock -153 17 0 minecraft:magenta_glazed_terracotta[facing=north]
  setblock -153 17 -9 minecraft:magenta_glazed_terracotta[facing=south]
 #Первый этаж
  setblock -139 8 -6 minecraft:magenta_glazed_terracotta[facing=west]
  setblock -150 8 -1 minecraft:magenta_glazed_terracotta[facing=east]
  setblock -125 8 11 minecraft:magenta_glazed_terracotta[facing=east]
 #Подвал
  setblock -139 -1 14 minecraft:magenta_glazed_terracotta[facing=west]
  setblock -147 -1 18 minecraft:magenta_glazed_terracotta[facing=east]
##Установка интеракшенов
 #Второй этаж
  summon interaction -153 19 0 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -153 19 -9 {height:1.5,width:1,Tags:["safe_safezone"]}
 #Первый этаж
  summon interaction -139 10 -6 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -150 10 -1 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -125 10 11 {height:1.5,width:1,Tags:["safe_safezone"]}
 #Подвал
  summon interaction -139 1 14 {height:1.5,width:1,Tags:["safe_safezone"]}
  summon interaction -147 1 18 {height:1.5,width:1,Tags:["safe_safezone"]}