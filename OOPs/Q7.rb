module Message
  def send_message(msg)
    raise NotImplementedError,"Subclasses should have this method"
  end
  
  def self.send_notification(object)
    puts object.send_message
  end
end

class EmailMessage
  include Message
  def send_message
    return "This is an E-Mail"
  end
end

class SMSMessage
  include Message
  def send_message
    return "This is a text msg"
  end
end

email = EmailMessage.new
sms = SMSMessage.new
Message.send_notification(email)
Message.send_notification(sms)
