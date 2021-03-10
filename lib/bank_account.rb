class BankAccount
attr_accessor :name, :balance, :status, :amount

def initialize(name)
  @name = name.freeze
  @balance = 1000
  @status = "open"
end


def deposit(amount)
  @balance += amount
end

def display_balance
  puts "Your balance is $#{self.balance}."
end

def valid?
  true unless !self.status == "open" && !self.balance > 0

end

end
