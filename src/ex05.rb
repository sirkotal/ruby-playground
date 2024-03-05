class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      message = @line[(@line.index(':') + 1)..(@line.length - 1)]
      final_message = message.strip
      return final_message
    end
  
    def log_level
      level = @line[(@line.index('[') + 1)..(@line.index(']') - 1)]
      final_level = level.downcase
      return final_level
    end
  
    def reformat
      level = self.log_level
      message = self.message

      return "#{message} (#{level})"
    end
end

puts LogLineParser.new('[ERROR]: Invalid operation').message
puts LogLineParser.new("[WARNING]: Disk almost full\r\n").message
puts LogLineParser.new('[INFO]: Operation completed').log_level
puts LogLineParser.new('[INFO]: Operation completed').reformat
