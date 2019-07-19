class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending"
<<<<<<< HEAD
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
      if valid? && sender.balance > amount && self.status == "pending"
        sender.balance -= amount
        receiver.deposit(amount)
        self.status = "complete"
      else
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
  end
  
  def reverse_transfer
    if self.status == "complete"
      sender.deposit(amount)
      receiver.balance -= amount
      self.status = "reversed"
    end
=======
  end
  
  def valid?
    @sender.valid? == true && @receiver.valid? == true ? true : false
  end
  
  def execute_transaction
    count = 0
    
    until self.status != "pending" do
      if self.valid?
        self.sender.balance -= self.amount
        self.receiver.deposit(self.amount)
        self.status = "complete"
      else
        "Denied"
      end
    end
    
    
>>>>>>> 03342bed6068eb9e9af3231a1145659015615afe
  end
  
end
