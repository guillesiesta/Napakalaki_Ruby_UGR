
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Player
  def initialize(name)
    @nombre = name
    @dead
    @level = 1
    @pendingBadConsequence = null
    @visibleTreasures = Array.new
    @hiddenTreasures = Array.new 
    @combatResult = null
    @dice = Dice.getInstance
  end
  
  def getOponentLevel(m)
    m.getCombatLevel
  end
  
  def shouldConvert
    if dice.nextNumber == 6
      return true
    else
      return false
    end
  end
  
  def getCombatResult
    @combatResult
  end
  
  def getName
    @name
  end
  
  def setLevel(l)
    @level= l
  end
  
  def bringToLife
    @dead= false
  end
  
  def getDead
    @dead
  end
  
  def getCombatLevel
    if(@visibleTreasures.size>0)
      @a
      while(@a <= @visibleTreasures.size)
        if (@visibleTreasures.at(a) == [TreasureKind::NECKLACE])
          @bonus = @bonus + @visibleTreasures.at(a).getMaxBonus
        else
          @bonus = @bonus + @visibleTreasures.at(a).getMinBonus
        end
        @a = @a +1
      end
      @bonus = @bonus + @monster.getCombatLevel
      return @bonus
    end
  end
  
  def incrementsLevels(l)
    if canIBuyLevels(l)==true
      @level = @level + l
    end
    
  end
  
  def decrementsLevels(l)
    if((@level - l)<0 )
      @level = 1
    else
      @level = @level - 1
    end
  end
  
  def setPendingBadConsequence(b)
    @pendingBadConsequence = b
  end
  
  def dieIfNoTreasures
    @dead = true if( @hiddenTreasures.empty? && @visibleTreasures.empty? )
  end
  
  def discardNecklaceIfVisible
    for a in @visibleTreasures
      if(a ==  [TreasureKind::NECKLACE])
        @visibleTreasures.delete(a)
      end
    end
  end

  def die
    setLevel(1)
    @dealer = CardDealer.getInstance
    for a in @visibleTreasures
      dealer.giveTreasureBack(@visibleTreasures.at(a))
    end
    @visibleTreasures.clear
    
    for b in @hiddenTreasures
      dealer.giveTreasureBack(@hidenTreasures.at(b))
    end
    @hiddenTreasures.clear
    
    dieIfNoTreasures()
  end
  
  def computeGoldCoinsValue(t)
    total = 0    
    for a in @t
      total = total + a.getGoldCoins
    end
    return total/1000
  end 
  
  def canIBuyLevels(lev)
     
    if((lev + @level)<=10)
      return true
    else
      return false
    end
    
  end
  
  def applyPrize(currentMonster)
    incrementLevels(currentMonster.getLevelsGained)
    @nTreasures = currentMonster.getTreasuresGained
    
    if(@nTreasures > 0)
      @dealer = CardDealer.getInstance
      while a< nTreasures
        @treasure = @dealer.nextTreasure
        @hiddenTreasures.add(@treasure)
      end
    end
  end  
  
  def applyBadConsequence(bad)
    @levels = bad.getLevels
    decrementLevels(@levels)
    
    @pendingbad = bad.adjustToFitTreasureLists(@visibleTreasures, @hiddenTreasures)
    
    setPendingBadConsequence(@pendingbad)
  end  
  
  def canMakeTreasureVisible(t)

    @contador =0
    for a in @visibleTreasures
      if @visibleTreasures.at(a).getType == t.getType
        @contador = @contador + 1
      end
      if(t.getType == TreasureKind::ONEHAND)
        if @visibleTreasures.at(a).getType == TreasureKind::BOTHHAND
          return false
        end
      end
      
      if t.getType == TreasureKind::BOTHHAND
        if @visibleTreasures.at(a).getType == TreasureKind::ONEHAND
          return false
        end
      end
    end
    return @contador <1 || (t.getType == TreasureKind::ONEHAND && @contador < 2)
  end  
  
  def howManyVisibleTreasures(tkind)
    
    while(@a< @visibleTreasures.size)
      if(@visibleTreasures.at(a)== [TreasureKind::tkind])
        @contador = @contador + 1
      end
      @a = @a + 1
    end
    return @contador
  end  
  
  def combat(m)
    myLevel = getCombatLevel
    monsterLevel = getOponentLevel(m)
    
    if( myLevel > monsterLevel )
      aplyPrize(m)
      if( @level >= 10 )
        @combatResult = [CombatResult::WINANDWINGAME]
      else
        @combatResult = [CombatResult::WIN]
      end
    else
      @dice = Dice.getInstance
      escape = dice.nextNumber
      
      if( escape<5 )
        amIdead = m.kills
        if amIdead
          die
          @combatResult = "LOSEANDDIE"
        else
          aplyBadConsequence( m.getBadConsequence )
          @combatResult = "LOSE"
        end
      else
        @combatResult = "LOSEANDSCAPE"
      end
      discardNecklaceIfVisible
      return @combatResult    
    end
  end  
  
  def makeTreasureVisible(t)
    canI = canMakeTreasureVisible
    if( canI )
      @visibleTresures.add(t)
      @hiddenTreasures.delete(t)
    end
  end
  
  def discardVisibleTreasure(t)
    @visibleTreasure.delete(t)
    if( @pendingBadConsequence != nil && !@pendingBadConsequence.isEmpty )
      @pendingBadConsequence.substractVisibleTreasure(t)
    end
    dieIfNoTreasures
  end
  
  def discardHiddenTreasure(t)
    @hiddenTreasures.delete(t)
  end
 
  def buyLevels(visible, hidden)
    levelsMayBought = computeGoldCoinsValue(visible)
    levelsMayBought += computeGoldCoinsValue(hidden)
    levels = levelsMayBought
    canI = canIBuyLevels(levels)
    
    incrementLevels(levels) if canI
    
    @visibleTreasures.delete(visible)
    @hiddenTreasures.delete(hidden)
    
    dealer = CardDealer.getInstance
    
    for visi in visible
      dealer.giveTreasureBack(visi)
    end
    
    for hide in hidden
      dealer.guiveTreasureBack(hide)
    end
    
    return true
    
  end
  
  def validState
    if(pendingBadConsequence.isEmpty==true && @hiddentreasure.size<=4)
      return true
    else
      return false
    end
  end  
  
  def initTreasures
    dealer = CardDealer.getInstance
    @dice = Dice.getInstance
    bringToLife
    @hiddenTreasures.add(dealer.nextTreasure)
    
    number = dice.nextNumber
    @hiddenTreasures << dealer.nextTreasure if number > 1
    @hiddenTreasures << dealer.nextTreasure if number == 6
  end
  
  def hasVisibleTreasures
    if(@visibleTreasures.size > 0)
      return true
    else
      return false
    end
  end  

end
