
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class CultistPlayer < Player
  
  @@totalCultistPlayer = 0
      
  def initialize
    @myCultistCard = nil
  end
  
  def CultistPlayer(p, carta)
    super(p)
    @myCultistCard = carta
    @@totalCultistPlayer += 1
  end
  
  def getTotalCultistPlayer
    @@totalCultistPlayer
  end
  
  def getOponentLevel(m)
    return m.getCombatLevel
  end
  
  def shouldConvert
    return false
  end
  
  def getOponentLevel(m)
    return m.getCombatLevel
  end
  
  def shouldConvert
    return false
  end
  
  def computeGoldCoinsValue(t)
    return super * 2
  end
  
end
