class Transfer
attr_accessor :sender, :receiver, :amount, :status

def initialize(sender, receiver, amount)
  @sender = sender #BankAccount class instance
  @receiver = receiver  #BankAccount class instance
  @amount = amount
  @status = "pending"
end

def valid?
  sender.valid? && receiver.valid?
end

def execute_transaction
  if valid? && sender.balance > amount && self.status == "pending"
      sender.withdrawal(self.amount)
      receiver.deposit(self.amount)
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

def reverse_transfer
  if @status == "compelete"
    @sender.deposit(@amount)
    @receiver.deposit(@amount *- 1)
    @status = "reversed"
end
end

end
