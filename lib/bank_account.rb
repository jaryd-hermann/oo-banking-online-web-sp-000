class BankAccount
attr_accessor :name, :balance, :status

def initialize
  @name = name
  @name.freeze 
  @balance = 0
  @status = "open"
end

end
