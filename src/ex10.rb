class DndCharacter
    def self.modifier(const)
      return ((const - 10) / 2).to_i
    end
  
    def initialize
      count = 0
      until (count == 6)
        dice = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
        final_dice = dice.sort_by { |number| -number }
        # p final_dice
        final_dice.pop
        # p final_dice
        res = final_dice.sum

        if (count == 0)
            @strength = res
        end
        if (count == 1) 
            @dexterity = res
        end
        if (count == 2) 
            @constitution = res
            @hitpoints = 10 + DndCharacter.modifier(@constitution)
        end
        if (count == 3) 
            @intelligence = res
        end
        if (count == 4) 
            @wisdom = res
        end
        if (count == 5) 
            @charisma = res
        end

        count += 1
      end
    end

    def constitution
        @constitution
    end
    
    def strength
        @strength
    end
    
    def dexterity
        @dexterity
    end
    
    def intelligence
        @intelligence
    end
    
    def wisdom
        @wisdom
    end
    
    def charisma
        @charisma
    end

    def hitpoints
        @hitpoints
    end
end

# ch = DndCharacter.new