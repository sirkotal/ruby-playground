module SavingsAccount
    def self.interest_rate(balance)
        if balance < 0
            return 3.213
        elsif balance < 1000
            return 0.5
        elsif balance < 5000
            return 1.621
        else
            return 2.475
        end
    end
  
    def self.annual_balance_update(balance)
        return (balance + (balance * (interest_rate(balance) / 100))) 
    end
  
    def self.years_before_desired_balance(current_balance, desired_balance)
        years = 0
        until (current_balance >= desired_balance)
            years += 1
            current_balance = annual_balance_update(current_balance)
        end
        return years
    end
end
  
puts SavingsAccount.interest_rate(200.75)
puts SavingsAccount.annual_balance_update(200.75)
puts SavingsAccount.years_before_desired_balance(200.75, 214.88)