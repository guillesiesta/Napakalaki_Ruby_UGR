
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Napakalaki
  @@instance=nil
  
  def initialize
    @currentMonster
    @currentPlayer
    @players
    @dealer
  end
  private_class_method :new
  
  def initPlayers(names)
    #codigo
  end
  def nextPlayer
    #codigo
  end
  def nextTurnAllowed
    #codigo
  end
  private :initPlayers, :nextPlayer, :nextTurnAllowed
  def self.getInstance()
    if(@@instance==nil)
      @@instance=new
    end
    return @@instance
  end
  def developCombat
    #codigo
  end
  def discardVisibleTreasures(treasures)
    #codigo
  end
  def discardHiddenTreasures(treasures)
    #codigo
  end
  def makeTreasuresVisible(treasures)
    #codigo
  end
  def buyLevels(visible, hidden)
    #codigo
  end
  def initGame(players)
    #codigo
  end
  def getCurrentPlayer
    #codigo
  end
  def getCurrentMonster
    #codigo
  end
  def nextTurn
    #codigo
  end
  def endOfGame
    #codigo
  end
    
  # EXAMEN
  
  
  # FIN EXAMEN
  
end
