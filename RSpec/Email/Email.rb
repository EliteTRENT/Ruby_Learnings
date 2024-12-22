class Email
  @@existing_emails = []
  def initialize(email)
    @email = email
    if valid == "Email is VALID"
      @@existing_emails.push(email) unless @@existing_emails.include?(email)
    end
  end

  def valid
    regex = /^[A-Za-z0-9+_.%#]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}+$/
    if @email.match?(regex)
      return "Email is VALID"
    else
      return "Email is INVALID"
    end
  end

  def self.unique
    puts "Valid emails are listed below: "
    @@existing_emails.each do |email|
      puts email
    end
  end
end

user1 = Email.new("aryannegi123@gmail.com")
user2 = Email.new("aryannegi123@gmail.com")
user3 = Email.new("negi_aru28@gmail.com")
user4 = Email.new("canand2003@gmail.com")
user5 = Email.new("aman#yahoo.+com")
Email.unique
puts user1.valid
puts user2.valid
puts user3.valid
puts user4.valid
puts user5.valid