
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Treasure
  def initialize(n,g,min,max,t)
    @name=n
    @goldCoins=g
    @minBonus=min
    @maxBonus=max
    @type=t
  end
  
  def getName
    @name
  end
  def getGoldCoins
    @goldCoins
  end
  def getMinBonus
    @minBonus
  end 
  def getMaxBonus
    @maxBonus
  end
  def getType
    @type
  end
end
