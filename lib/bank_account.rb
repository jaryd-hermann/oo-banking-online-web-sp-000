class BankAccount
attr_accessor :name, :balance, :status, :amount

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def name
  @name.freeze
end

def deposit(amount)
  @balance << amount
end

def display_balance
  @balance
  puts "Your balance is #{@balance}"
end


end
