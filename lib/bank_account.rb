class BankAccount
attr_accessor :name, :balance, :status, :amount

def initialize(name)
  @name = name
  @name.freeze 
  @balance = 1000
  @status = "open"
end


def deposit(amount)
  @balance += amount
end

def display_balance
  "Your balance is $#{self.balance}."
end

def valid?
  if self.status == "open" && self.balance > 0
    true
  else
    false
  end
  #true unless !self.status == "open" && !self.balance > 0
end

def close_account
  self.delete
end

end
