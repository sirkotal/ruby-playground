class AssemblyLine
    PRODUCTION = 221
    def initialize(speed)
      @speed = speed

      if @speed > 0 && @speed <= 4
        @efficiency = 1
      elsif @speed >= 5 && @speed <= 8
        @efficiency = 0.9
      elsif @speed == 9
        @efficiency = 0.8
      elsif @speed == 10
        @efficiency = 0.77
      end
    end
  
    def production_rate_per_hour
      return (PRODUCTION * @speed * @efficiency).to_f
    end
  
    def working_items_per_minute
      return (self.production_rate_per_hour / 60).to_i
    end
end

puts AssemblyLine.new(6).production_rate_per_hour
puts AssemblyLine.new(6).working_items_per_minute