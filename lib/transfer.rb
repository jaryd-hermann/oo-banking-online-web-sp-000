class Transfer
attr_accessor :sender, :reciever, :amount

def initialize(sender, receiver, amount)
  @sender = sender #BankAccount class instance
  @receiver = receiver  #BankAccount class instance
  @amount = amount
  @status = "pending"
end

def valid?(sender, receiver)
  if BankAccount.sender.valid? && BankAccount.receiver.valid?
    true
  else
    false
  end
end

end
