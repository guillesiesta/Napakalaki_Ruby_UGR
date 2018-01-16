
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Monster
  def initialize(n, l, b, p, levelchange)
    @name = n
    @combatLevel = l
    @badConsequence = b
    @prize = p
    @levelChangeAgainstCultistPlayer = levelchange
  end

  def getName
    @name
  end
  
  def getCombatLevel
    @combatLevel
  end
  
  def getBadConsequence
    @badconsequence
  end
  
  def getLevelsGained
    @prize.getLevel
  end
  
  def getTreasuresGained
    @prize.getTreasures
  end
  
  def kills
    @badConsequence.myBadConsequenseIsDeath
  end
  
  def getPrize
    @prize
  end
  def getLevelChangeAgainstCultistPlayer
    @levelChangeAgainstCultistPlayer
  end
  
  def getBasicValue
    return @getCombatLevel + @getLevelChangeAgainstCultistPlayer
  end
  
  def getSpecialValue
    return getLevelsGained
  end
  
  def to_s
    "Name: #{@name} \n CombatLevel: #{@combatLevel} \n Price: #{@price} \n Bc: #{@bc}"
  end

end
