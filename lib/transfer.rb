class Transfer
attr_accessor :sender, :reciever, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
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

end
