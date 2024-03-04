class Attendee
    def initialize(height)
      @height = height
    end
  
    def issue_pass!(pass_id)
      @pass_id = pass_id
    end
  
    def revoke_pass!
      @pass_id = nil
    end
  
    def has_pass?
      if @pass_id == nil
        return false
      end

      return true
    end
  
    def fits_ride?(ride_minimum_height)
      if @height >= ride_minimum_height
        return true
      end
      
      return false
    end
  
    def allowed_to_ride?(ride_minimum_height)
      return has_pass? && fits_ride?(ride_minimum_height)
    end
end

attendee = Attendee.new(106)
puts attendee.has_pass?
attendee.issue_pass!(45)
puts attendee.has_pass?
puts attendee.fits_ride?(100)
puts Attendee.new(98).fits_ride?(100)
puts attendee.allowed_to_ride?(102)