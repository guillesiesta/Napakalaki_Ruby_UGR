
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class CardDealer
  @@instance=nil
  
  def initialize
    @unusedTreasures =Array.new
    @usedTreasures =Array.new
    @unusedMonsters =Array.new
    @usedMonsters =Array.new
    @unusedCultists =Array.new
    @usedCultists =Array.new
  end

  def initTreasureCardDeck
    #1-¡Sí mi amo!
    @unusedTreasures << Treasure.new("¡Sí mi amo!", 0, 4, 7, TreasureKind::HELMET)

    #2-Botas de investigación
    @unusedTreasures << Treasure.new("Botas de investigación", 600, 3, 4, TreasureKind.SHOE)

    #3-Capucha de Cthulhu
    @unusedTreasures << Treasure.new("Capucha de Cthulhu", 500, 3, 5, TreasureKind.HELMET)

    #4-A prueba de babas
    @unusedTreasures << Treasure.new("A prueba de babas", 400, 2, 5, TreasureKind.ARMOR)

    #5-Botas de lluvia ácida
    @unusedTreasures << Treasure.new("Botas de lluvia ácida", 800, 1, 1, TreasureKind.BOTHHAND)

    #6-Casco minero
    @unusedTreasures << Treasure.new("Casco minero", 400, 2, 4, TreasureKind.HELMET)

    #7-Ametralladoras Thompson
    @unusedTreasures << Treasure.new("Ametralladoras Thompson", 600, 4, 8, TreasureKind.BOTHHAND)

    #8-Camiseta de la UGR
    @unusedTreasures << Treasure.new("Camiseta de la UGR", 100, 1, 7, TreasureKind.ARMOR)

    #9-Clavo de rail ferroviario
    @unusedTreasures << Treasure.new("Clavo de rail ferroviario", 400, 3, 6, TreasureKind.ONEHAND)

    #10-Cuchillo de sushi arcano
    @unusedTreasures << Treasure.new("Cuchillo de sushi arcano", 300, 2, 3, TreasureKind.ONEHAND)

    #11-Fez alópolo
    @unusedTreasures << Treasure.new("Fez alópolo", 700, 3, 5, TreasureKind.HELMET)

    #12-Hacha prehistórica
    @unusedTreasures << Treasure.new("Hacha prehistórica", 500, 2, 5, TreasureKind.ONEHAND)

    #13-El aparato del Pr. Tesla
    @unusedTreasures << Treasure.new("El aparato del Pr. Tesla", 900, 4, 8, TreasureKind.ARMOR)

    #14-Gaita
    @unusedTreasures << Treasure.new("Gaita", 500, 4, 5, TreasureKind.BOTHHAND)

    #15-Insecticida
    @unusedTreasures << Treasure.new("Insecticida", 300, 2, 3, TreasureKind.ONEHAND)

    #16-Escopeta de 3 cañones
    @unusedTreasures << Treasure.new("Escopeta de 3 cañones", 700, 4, 6, TreasureKind.BOTHHAND)

    #17-Garabato místico
    @unusedTreasures << Treasure.new("Garabato místico", 300, 2, 2, TreasureKind.ONEHAND)

    #18-La fuerza de Mr.T
    @unusedTreasures << Treasure.new("La fuerza de Mr.T", 1000, 0, 0, TreasureKind.NECKLACE)

    #19-La rebeca metálica
    @unusedTreasures << Treasure.new("La rebeca metálica", 400, 2, 3, TreasureKind.ARMOR)

    #20-Mazo de los antiguos
    @unusedTreasures << Treasure.new("Mazo de los antiguos", 200, 3, 4, TreasureKind.ONEHAND)

    #21-Necro-playboycón
    @unusedTreasures << Treasure.new("Necro-playboycón", 300, 3, 5, TreasureKind.ONEHAND)

    #22-Lanzallamas
    @unusedTreasures << Treasure.new("Lanzallamas", 800, 4, 8, TreasureKind.BOTHHAND)

    #23-Necro-comicón
    @unusedTreasures << Treasure.new("Necro-comicón", 100, 1, 1, TreasureKind.ONEHAND)

    #24-Necronomicón
    @unusedTreasures << Treasure.new("Necronomicón", 800, 5, 7, TreasureKind.BOTHHAND)

    #25-Linterna a 2 manos
    @unusedTreasures << Treasure.new("Linterna a 2 manos", 400, 3, 6, TreasureKind.BOTHHAND)

    #26-Necro-gnomicón
    @unusedTreasures << Treasure.new("Necro-gnomicón", 200, 2, 4, TreasureKind.ONEHAND)

    #27-Necrotelecom
    @unusedTreasures << Treasure.new("Necrotelecom", 300, 2, 3, TreasureKind.HELMET)

    #28-Porra preternatural
    @unusedTreasures << Treasure.new("Porra preternatural", 200, 2, 3, TreasureKind.ONEHAND)

    #29-Tentáculo de pega
    @unusedTreasures << Treasure.new("Tentáculo de pega", 200, 0, 1, TreasureKind.HELMET)

    #30-Zapato deja-amigos
    @unusedTreasures << Treasure.new("Zapato deja-amigos", 500, 0, 1, TreasureKind.SHOE)

    #31-Shogulador
    @unusedTreasures << Treasure.new("Shogulador", 600, 1, 1, TreasureKind.BOTHHAND)

    #32-Varita de atizamiento
    @unusedTreasures << Treasure.new("Varita de atizamiento", 400, 3, 4, TreasureKind.ONEHAND)
  end
  
  def initMonsterCardDeck
    #3 Byakhees de bonanza----------------------------------------------------------
    bc1 = BadConsequence.newLevelSpecificTreasures("Pierdes tu armadura visible y otra oculta", 0, [TreasureKind::ARMOR],[TreasureKind::ARMOR])
    pr1 = Prize.new(2,1)
    @unusedMonsters << Monster.new("3 Byakhees de bonanza",8, pr1, bc1)

    #Chibithulhu--------------------------------------------------------------------
    bc2 = BadConsequence.newLevelSpecificTreasures("Embobados con el lindo primigenio te descartas de tu casco visible", 0, [TreasureKind::HELMET],nil)
    pr2 = Prize.new(1,1)
    @unusedMonsters << Monster.new("Chibithulhu", 2, pr2, bc2)

    #El sopor de Dunwich------------------------------------------------------------
    bc3 = BadConsequence.newLevelSpecificTreasures("El primordial bostezo contagioso. Pierdes el calzado visible",0, [TreasureKind::SHOE],nil)
    pr3 = Prize.new(1,1)
    @unusedMonsters << Monster.new("El sopor de Dunwich", 2, pr3, bc3)

    #Ángeles de la noche ibicenca---------------------------------------------------
    bc4 = BadConsequence.newLevelNumberOfTreasures("Te atrapan para llevarte de fietsa y te dejan caer en mitad del vuelo. Descarta 1 mano visible y 1 mano oculta", 0, 1,1)
    pr4 = Prize.new(4, 1)
    @unusedMonsters << Monster.new("Angeles de la noche ibicenca",14,pr4,bc4)

    #El gorrón en el umbral---------------------------------------------------------
    bc5 = BadConsequence.newLevelNumberOfTreasures("Pierdes todos tus tesoros visibles", 0, 20,0)
    pr5 = Prize.new(3,1)
    @unusedMonsters << Monster.new("El gorron en el umbral",10, pr5, bc5)

    #H.P Munchcraft-----------------------------------------------------------------
    bc6 = BadConsequence.newLevelSpecificTreasures("Pierdes la armadura visible",0,[TreasureKind::ARMOR],nil)
    pr6 = Prize.new(2,1)
    @unusedMonsters << Monster.new("H.P Munchcraft", 6, pr6, bc6)

    #Bichgooth----------------------------------------------------------------------
    bc7 = BadConsequence.newLevelSpecificTreasures("Sientes bichos bajo la ropa. Desccarta la armadura visible", 0, [TreasureKind::ARMOR],nil)
    pr7 = Prize.new(1,1)
    @unusedMonsters << Monster.new("Bichgooth", 2, pr7, bc7)

    #El rey de rosa-----------------------------------------------------------------
    bc8 = BadConsequence.newLevelNumberOfTreasures("Pierdes 5 niveles y 3 tesoros visibles", 5 , 3, 0)
    pr8 = Prize.new(4,2)
    @unusedMonsters << Monster.new("El rey de rosa", 13, pr8, bc8)

    #La que redacta en las tinieblas------------------------------------------------
    bc9 = BadConsequence.newLevelNumberOfTreasures("Toses los pulmones y pierdes 2 niveles", 2,0,0)
    pr9 = Prize.new(1,1)
    @unusedMonsters << Monster.new("La que redacta en las tinieblas", 2, pr9, bc9)

    #Los hondos---------------------------------------------------------------------
    bc10 = BadConsequence.newDeath("Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto")
    pr10 = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Los hondos", 8,pr10,bc10)

    #Semillas Cthulhu---------------------------------------------------------------
    bc11 = BadConsequence.newLevelNumberOfTreasures("Pierdes 2 niveles y 2 tesoros ocultos",2,0,2)
    pr11 = Prize.new(2,1)
    @unusedMonsters << Monster.new("Semillas Cthulhu", 4, pr11, bc11)

    #Dameargo-----------------------------------------------------------------------
    bc12 = BadConsequence.newLevelSpecificTreasures("Te intentas escaquear. Pierdes una mano visible",0, [TreasureKind::ONEHAND], nil)
    pr12 = Prize.new(2,1)
    @unusedMonsters << Monster.new("Dameargo",1, pr12, bc12)

    #Pollipólito volante------------------------------------------------------------
    bc13 = BadConsequence.newLevelNumberOfTreasures("Da mucho asquito. Pierdes 3 niveles", 3,0,0)
    pr13 = Prize.new(1, 1)
    @unusedMonsters << Monster.new("Pollipolito volante",3, pr13, bc13)

    #Yskhtihyssg-Goth---------------------------------------------------------------
    bc14 = BadConsequence.newDeath("No le hace gracia que pronuncien mal su nombre. Estas muerto")
    pr14 = Prize.new(3,1)
    @unusedMonsters << Monster.new("Yskhtihyssg-Goth", 12, pr14, bc14)

    #Familia feliz------------------------------------------------------------------
    bc15 = BadConsequence.newDeath("La familia te atrapa. Estas muerto")
    pr15 = Prize.new(4,1)
    @unusedMonsters << Monster.new("Familia feliz", 1, pr15, bc15)

    #Roboggoth----------------------------------------------------------------------
    bc16 = BadConsequence.newLevelSpecificTreasures("La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2 manos visible", 2, [TreasureKind::BOTHHAND],nil)
    pr16 = Prize.new(2,1)
    @unusedMonsters << Monster.new("Roboggoth",8, pr16, bc16)

    #El espía-----------------------------------------------------------------------
    bc17 = BadConsequence.newLevelSpecificTreasures("Te asusta en la noche. Pierdes n casco visible",0,[TreasureKind::HELMET],nil)
    pr17 = Prize.new(1,1)
    @unusedMonsters << Monster.new("El espia", 5, pr17, bc17)

    #El Lenguas---------------------------------------------------------------------
    bc18 = BadConsequence.newLevelNumberOfTreasures("Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles",2,5,0)
    pr18 = Prize.new(1,1)
    @unusedMonsters << Monster.new("El Lenguas", 20, pr18, bc18)

    #Bicéfalo-----------------------------------------------------------------------
    bc19 = BadConsequence.newLevelSpecificTreasures("Te faltan manos para tanta cabeza", 3,[TreasureKind::BOTHHAND], nil)
    pr19 = Prize.new(1, 1)
    @unusedMonsters << Monster.new("Bicefalo", 20, pr19, bc19)    
  end
  
  def initCultistCardDeck
    @unusedCultists << Cultist.new("Sectario", 1)
    @unusedCultists << Cultist.new("Sectario", 2)
    @unusedCultists << Cultist.new("Sectario", 1) 
    @unusedCultists << Cultist.new("Sectario", 2)  
    @unusedCultists << Cultist.new("Sectario", 1)     
    @unusedCultists << Cultist.new("Sectario", 1)     
  end
  
  def initCards
    initTreasureCardDeck
    initMonsterCardDeck
    initCultistCardDeck
  end
  
  def shuffleTreasures
    @unusedTreasures.shuffle
  end
  
  def shuffleMonsters
    @unusedMonsters.shuffle
  end
  
  def shuffleCultists
    unusedCultists.shuffle
  end
  
  def self.getInstance
    if(@@instance==nil)
      @@instance=new
    end
    return @@instance
  end
  private_class_method :new
  
  def nextTreasure
    if @unusedTreasures == nil
      for usedT in @usedTreasures
        @unusedTreasures << usedT
      end
      @usedTreasures = nil
      shuffleTreasures
      next_t = @unusedTreasures.get(0)
      @unusedTreasures.remove(0)
    else
      next_t = @unusedtreasures.get(0)
      giveTreasureBack(@unusedTreasures.get(0))
      @unusedTreasures.remove(0)
    end
  end
  
  def nextMonster
    if @unusedMonsters == nil
      for usedM in @usedMonsters
        @unusedMonsters << usedM
      end
      @usedMonsters = nil
      shuffleMonsters
      next_m = @unusedMonsters.get(0)
      @unusedMonsters.remove(0)
    else
      next_m = @unusedMonsters.get(0)
      giveMonsterBack(@@unusedMonsters.get(0))
      @unusedMonsters.remove(0)
    end
  end

  def nextCultist
    if @unusedCultists == nil
      for usedC in @usedCultists
        @unusedCultists << usedC
      end
      @usedCultists = nil
      shuffleCultists
      next_c = @unusedCultists.get(0)
      @unusedCultists.remove(0)
    else
      next_c = @unusedCultists.get(0)
      giveCultistsBack(@unusedCultists.get(0))
      @unusedCultists.remove(0)
    end    
  end  
  
  def giveTreasureBack(t)
    @usedTreasures << t
  end
  def giveMonsterBack(m)
    @usedMonsters << m
  end
  
end
