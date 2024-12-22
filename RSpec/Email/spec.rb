require_relative "./Email.rb"

RSpec.describe "Email" do
  before do
    Email.class_variable_set(:@@existing_emails,[])
    @user1 = Email.new("aryannegi123@gmail.com")
    @user2 = Email.new("aman@+yahoo.+com")
  end
  describe "#initialize" do
    it "initializes the object with values passed and checks if it is valid" do
      expect(@user1.instance_variable_get(:@email)).to eq("aryannegi123@gmail.com")
      expect(Email.class_variable_get(:@@existing_emails)).to include("aryannegi123@gmail.com")
    end
    it "doesn't add invalid emails to the @@existing_emails array" do
      expect(Email.class_variable_get(:@@existing_emails)).not_to include("aman@+yahoo.+com")
    end
  end
  describe "#valid" do
    it 'returns "Email is VALID" for valid email addresses' do
      expect(@user1.valid).to eq("Email is VALID")
    end
    it 'returns "Email is INVALID" for invalid email addresses' do
      expect(@user2.valid).to eq("Email is INVALID")
    end
  end
  describe ".unique" do
    it "list all unique valid emails" do
      expect{Email.unique}.to output("Valid emails are listed below: \naryannegi123@gmail.com\n").to_stdout
    end
  end
end

