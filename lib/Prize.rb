
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Prize

  def initialize(treasures,level)
    @treasures = treasures
    @level = level
  end

  def getTreasures
    @treasures
  end

  def getLevel
    @level
  end

  def to_s
    "Tesoros ganados: #{@treasures} \n Niveles ganados: #{@level}"
  end

end
