class Transfer
attr_accessor :sender, :receiver, :amount, :status

def initialize(sender, receiver, amount)
  @sender = sender #BankAccount class instance
  @receiver = receiver  #BankAccount class instance
  @amount = amount
  @status = "pending"
end

def valid?
  if @sender.valid? && @receiver.valid?
    true
  else
    false
  end
end

def execute_transfer
  if @sender.balance < @amount
    @status = "rejected"
    "Transaction rejected. Please check your account balance."

  elsif @status = "complete"
    "Transaction was already excuted"

  else
  @receiver.deposit(@amount)
  @sender.deposit( @amount * -1 )
  @status = "complete"
  end

end

end
