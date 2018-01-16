
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

require './Prize.rb'
require './BadConsequence.rb'
require './Monster.rb'
require './TreasureKind.rb'

#bad = BadConsequence.newLevelNumberOfTreasures('Adiooos', 4, 1, 2)
#
#pri = Prize.new(1, 2)
#
#mon = Monster.new("PACO", 12, pri, bad)
#
#puts mon.to_s

monsters = Array.new

################################################################################
############## MONSTRUOS #######################################################
################################################################################

#3 Byakhees de bonanza----------------------------------------------------------

bc1 = BadConsequence.newLevelSpecificTreasures("Pierdes tu armadura visible y otra oculta", 0, [TreasureKind::ARMOR],[TreasureKind::ARMOR])
pr1 = Prize.new(2,1)

monsters << Monster.new("3 Byakhees de bonanza",8, pr1, bc1)

#Chibithulhu--------------------------------------------------------------------

bc2 = BadConsequence.newLevelSpecificTreasures("Embobados con el lindo primigenio te descartas de tu casco visible", 0, [TreasureKind::HELMET],nil)
pr2 = Prize.new(1,1)

monsters << Monster.new("Chibithulhu", 2, pr2, bc2)

#El sopor de Dunwich------------------------------------------------------------
bc3 = BadConsequence.newLevelSpecificTreasures("El primordial bostezo contagioso. Pierdes el calzado visible",0, [TreasureKind::SHOE],nil)
pr3 = Prize.new(1,1)

monsters << Monster.new("El sopor de Dunwich", 2, pr3, bc3)

#Ángeles de la noche ibicenca---------------------------------------------------
bc4 = BadConsequence.newLevelNumberOfTreasures("Te atrapan para llevarte de fietsa y te dejan caer en mitad del vuelo. Descarta 1 mano visible y 1 mano oculta", 0, 1,1)
pr4 = Prize.new(4, 1)

monsters << Monster.new("Angeles de la noche ibicenca",14,pr4,bc4)

#El gorrón en el umbral---------------------------------------------------------
bc5 = BadConsequence.newLevelNumberOfTreasures("Pierdes todos tus tesoros visibles", 0, 20,0)
pr5 = Prize.new(3,1)

monsters << Monster.new("El gorron en el umbral",10, pr5, bc5)

#H.P Munchcraft-----------------------------------------------------------------
bc6 = BadConsequence.newLevelSpecificTreasures("Pierdes la armadura visible",0,[TreasureKind::ARMOR],nil)
pr6 = Prize.new(2,1)

monsters << Monster.new("H.P Munchcraft", 6, pr6, bc6)

#Bichgooth----------------------------------------------------------------------
bc7 = BadConsequence.newLevelSpecificTreasures("Sientes bichos bajo la ropa. Desccarta la armadura visible", 0, [TreasureKind::ARMOR],nil)
pr7 = Prize.new(1,1)

monsters << Monster.new("Bichgooth", 2, pr7, bc7)

#El rey de rosa-----------------------------------------------------------------
bc8 = BadConsequence.newLevelNumberOfTreasures("Pierdes 5 niveles y 3 tesoros visibles", 5 , 3, 0)
pr8 = Prize.new(4,2)

monsters << Monster.new("El rey de rosa", 13, pr8, bc8)

#La que redacta en las tinieblas------------------------------------------------
bc9 = BadConsequence.newLevelNumberOfTreasures("Toses los pulmones y pierdes 2 niveles", 2,0,0)
pr9 = Prize.new(1,1)

monsters << Monster.new("La que redacta en las tinieblas", 2, pr9, bc9)

#Los hondos---------------------------------------------------------------------
bc10 = BadConsequence.newDeath("Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto")
pr10 = Prize.new(2, 1)

monsters << Monster.new("Los hondos", 8,pr10,bc10)

#Semillas Cthulhu---------------------------------------------------------------
bc11 = BadConsequence.newLevelNumberOfTreasures("Pierdes 2 niveles y 2 tesoros ocultos",2,0,2)
pr11 = Prize.new(2,1)

monsters << Monster.new("Semillas Cthulhu", 4, pr11, bc11)

#Dameargo-----------------------------------------------------------------------
bc12 = BadConsequence.newLevelSpecificTreasures("Te intentas escaquear. Pierdes una mano visible",0, [TreasureKind::ONEHAND], nil)
pr12 = Prize.new(2,1)

monsters << Monster.new("Dameargo",1, pr12, bc12)

#Pollipólito volante------------------------------------------------------------
bc13 = BadConsequence.newLevelNumberOfTreasures("Da mucho asquito. Pierdes 3 niveles", 3,0,0)
pr13 = Prize.new(1, 1)

monsters << Monster.new("Pollipolito volante",3, pr13, bc13)

#Yskhtihyssg-Goth---------------------------------------------------------------
bc14 = BadConsequence.newDeath("No le hace gracia que pronuncien mal su nombre. Estas muerto")
pr14 = Prize.new(3,1)

monsters << Monster.new("Yskhtihyssg-Goth", 12, pr14, bc14)

#Familia feliz------------------------------------------------------------------
bc15 = BadConsequence.newDeath("La familia te atrapa. Estas muerto")
pr15 = Prize.new(4,1)

monsters << Monster.new("Familia feliz", 1, pr15, bc15)

#Roboggoth----------------------------------------------------------------------
bc16 = BadConsequence.newLevelSpecificTreasures("La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2 manos visible", 2, [TreasureKind::BOTHHAND],nil)
pr16 = Prize.new(2,1)

monsters << Monster.new("Roboggoth",8, pr16, bc16)

#El espía-----------------------------------------------------------------------
bc17 = BadConsequence.newLevelSpecificTreasures("Te asusta en la noche. Pierdes n casco visible",0,[TreasureKind::HELMET],nil)
pr17 = Prize.new(1,1)

monsters << Monster.new("El espia", 5, pr17, bc17)

#El Lenguas---------------------------------------------------------------------
bc18 = BadConsequence.newLevelNumberOfTreasures("Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles",2,5,0)
pr18 = Prize.new(1,1)

monsters << Monster.new("El Lenguas", 20, pr18, bc18)

#Bicéfalo-----------------------------------------------------------------------
bc19 = BadConsequence.newLevelSpecificTreasures("Te faltan manos para tanta cabeza", 3,[TreasureKind::BOTHHAND], nil)
pr19 = Prize.new(1, 1)

monsters << Monster.new("Bicefalo", 20, pr19, bc19)

################################################################################
############## CONSULTAS #######################################################
################################################################################

#1-----------------------------------------------------------------------------

#i = 0
#
#while i < monsters.length
#  if monsters.at(i).combatLevel > 10
#    puts monsters.at(i)
#  end
#  i = i +1
#end

#2------------------------------------------------------------------------------

#a = 0
#
#while a < monsters.length
#  if monsters.at(a).bc.levels > 0 && monsters.at(a).bc.nVisibleTreasures == 0 && monsters.at(a).bc.nHiddenTreasures == 0 && monsters.at(a).bc.specificVisibleTreasures == nil && monsters.at(a).bc.specificHiddenTreasures == nil
#      puts monsters.at(a)
#  end
#  a = a + 1
#end

#3------------------------------------------------------------------------------

#b = 0
#
#while b < monsters.length
#  if monsters.at(b).price.level > 1
#    puts monsters.at(b)
#  end
#  b = b + 1
#end

#4

#c = 0
#
#while c < monsters.length
#  if monsters.at(c).bc.specificVisibleTreasures != nil || monsters.at(c).bc.specificHiddenTreasures != nil
#    puts monsters.at(c)
#  end
#  c = c +1
#end
