require_relative "./BankAccount.rb"

RSpec.describe "BankAccount" do
  before do
    @acc = BankAccount.new("Aryan",20000)
  end
  describe "#initialize" do
    it "initializes the object with values passed onto it" do
      expect(@acc.instance_variable_get(:@name)).to eq("Aryan")
      expect(@acc.instance_variable_get(:@balance)).to eq(20000)
    end
  end
  describe "#deposit" do
    it "deposits the amount specified to the object's balance" do
      expect{@acc.deposit(10000)}.to change{@acc.instance_variable_get(:@balance)}.by(10000)
    end
    it "prints the updated value after depositing" do
      expect{@acc.deposit(10000)}.to output("Amt: 10000 credited successfully\nUpdated balance: 30000\n").to_stdout
    end
  end
  describe "#withdraw" do
    context "when withdrawal amount is less than or equal to balance" do
      it "withdraws the amount specified" do
        expect{@acc.withdraw(10000)}.to change{@acc.instance_variable_get(:@balance)}.by(-10000)
      end
      it "prints the corrext message when withdrawing" do
        expect{@acc.withdraw(10000)}.to output("Amt: 10000 debited successfully\nUpdated balance: 10000\n").to_stdout
      end
    end
    context "when withdrawal amount is greater than balance" do
      it "raises a SomeError" do
        expect{@acc.withdraw(30000)}.to raise_error(SomeError) {|e| expect(e.message).to eq("Withdrawl amount cannot be greater than bank balance")}
      end
    end
  end
  describe "#show_details" do
    it "prints the correct account details" do
      expect{@acc.show_details}.to output("Name: Aryan\nBalance: 20000\n").to_stdout
    end
  end
end

=begin
to change, to raise_error needs block on both sides(left and right)
to output needs block on left side
=end
