
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class BadConsequence

  def initialize
    @text 
    @levels
    @nVisibleTreasures = 0
    @nHiddenTreasures  = 0
    @specificVisibleTreasures = Array.new
    @specificHiddenTreasures = Array.new
    @death
  end

    #constructors
  def BadConsequence.newLevelNumberOfTreasures(aText, someLevels, someVisibleTreasures,someHiddenTreasures)
    new(aText, someLevels, someVisibleTreasures,someHiddenTreasures)
  end
  def BadConsequence.newLevelSpecificTreasures(aText, someLevels,someSpecificVisibleTreasures, someSpecificHiddenTreasures)
    new(aText, someLevels,0,0,someSpecificVisibleTreasures, someSpecificHiddenTreasures)
  end
  def BadConsequence.newDeath(aText)
    new(aText,0,0,0,nil,nil,true)
  end
  private_class_method :new
  
  
  #functions
  def isEmpty
    return (@nvisibleTreasures==0 && @nhiddenTreasures==0 && @specificVisibleTreasures.empty==true && @specificHiddenTreasures.empty==true)
  end 
  def getLevels
    @levels    
  end
  def getnVisibleTreasures
    @nVisibleTreasures
  end
  def getnHiddenTreasures
    @nHiddenTreasures
  end
  def getSpecificHiddenTreasures
    @specificHiddenTreasures
  end
  def getSpecificVisibleTreasures
    @specificVisibleTreasures
  end
  def substractVisibleTreasure(t)
    
    if
      for a in @specificVisibleTreasures
        @specificVisibleTreasures.delete(a) if (a == t)
      end
    else
      if @nVisibleTreasures > 0
        @nVisibleTreasures -= @nVisibleTreasures
      end
    end
  end
  def substractHiddenTreasure(t)
    if
      for a in @specificHiddenTreasures
        @specificHiddenTreasures.delete(a) if (a == t)
      end
    else
      if @nHiddenTreasures > 0
        @nHiddenTreasures -= @nHiddenTreasures
      end
    end
  end
  

  
  #functions
  def adjustToFitTreasureLists(v, h)
    for i in v
      tv << i.getType
    end
    for j in h
      th << j.getType
    end
    b = BadConsequence.newLevelSpecificTreasures("", 0, tv, th)
    return b
  end
  
  def myBadConsequenseIsDeath
    @death    
  end
  
  def to_s
    "Text: #{@text} \n Levels: #{@levels} \n nVisibleTreasures: #{@nVisibleTreasures} \n nHiddenTreasures: #{@nHiddenTreasures} \n specificVisibleTreasures: #{@specificVisibleTreasures} \n specificHiddenTreasures: #{@specificHiddenTreasures}"
  end
end #FIN DE LA CLASE-------------------------------------------------------------------
