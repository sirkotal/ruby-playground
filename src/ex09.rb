module Port
    IDENTIFIER = :PALE
  
    def self.get_identifier(city)
        code = city[0..3]
        return code.to_sym.upcase
    end
  
    def self.get_terminal(ship_identifier)
        cargo = ship_identifier.to_s[0..2]

        if (cargo == "OIL" || cargo == "GAS")
            return :A
        end

        return :B
    end
end

puts Port::IDENTIFIER 
puts Port.get_identifier("Hamburg")
puts Port.get_terminal(:OIL123)