class Transfer
attr_accessor :sender, :receiver, :amount, :status

def initialize(sender, receiver, amount)
  @sender = sender #BankAccount class instance
  @receiver = receiver  #BankAccount class instance
  @amount = amount
  @status = "pending"
end

def valid?(sender, receiver)
  if sender.valid? && receiver.valid?
    true
  else
    false
  end
end

def execute_transfer
  if self.valid?
  BankAccount.receiver.balance += @amount
  BankAccount.sender.balance -+ @amount
  else
  end

end

end
