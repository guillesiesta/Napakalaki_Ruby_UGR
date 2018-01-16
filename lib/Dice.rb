
#encoding: utf­8
#
# Guillermo Muriel
# Luis Liñán

class Dice
  @@instance=nil
  
  def initialize
  end
  private_class_method :new
  #functions
  def self.getInstance
    if(@@instance==nil)
      @@instance=new
    end
    return @@instance
  end

  def nextNumber
    #codigo
  end
end