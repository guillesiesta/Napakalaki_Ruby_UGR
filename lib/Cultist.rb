
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Cultist
  
  def initialize
    @name
    @gainedLevels =0
  end
  
  def getName
    @name
  end
  
  #funciones
  def getGainedLevels
    @gainedLevels
  end
  
  def getBasicValue
    return getGainedLevels
  end
  
  def getSpecialValue
    return CultistPlayer.getTotalCultistPlayer * getBasicValue
  end
  
  def Cultist(n, gl)
    @name = n
    @gainedLevels = gl
  end
  
end
