class Attendee
    @pass_id = nil
    def initialize(height)
      @height = height
    end
  
    def height
      return @height
    end
  
    def pass_id
      return @pass_id
    end
  
    def issue_pass!(pass_id)
      @pass_id = pass_id
    end
  
    def revoke_pass!
      @pass_id = nil
    end
end

attendee = Attendee.new(106)
puts attendee.height
puts attendee.pass_id
attendee.issue_pass!(45)
puts attendee.pass_id
attendee.revoke_pass!
puts attendee.pass_id