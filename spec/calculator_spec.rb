require_relative '../calculator'

describe Calculator do
  let(:calc) { Calculator.new }
  describe ".sum" do
    context "add two numbers together" do
      it "returns the sum of two numbers" do
        expect(calc.sum(1, 98)).to eq(99)
      end
    end
    context "add nil value" do
      it "will raise an error" do
        expect{calc.sum(nil, 70)}.to raise_error(/Nil/)
      end
    end
    context "add string" do
      it "will raise an error" do
        expect{calc.sum(32, "Booty")}.to raise_error(/String/)
      end
    end
  end
  describe ".difference" do
    context "subtract one number from another" do
      it "returns the difference" do
        expect(calc.difference(43,13)).to eq(30)
      end
    end
    context "subtract nil value" do
      it "will raise an error" do
          expect{calc.difference(81, nil)}.to raise_error(/Nil/)
      end
    end
    context "subtract string value" do
      it "will raise an error" do
        expect{calc.difference("Turd Cutter", 12)}.to raise_error(/String/)
      end
    end
  end
  describe ".product" do
    context "multiply two numbers" do
      it "will return the product of two numbers" do
        expect(calc.product(2, 41)).to eq(82)
      end
    end
    context "multiply nil value" do
      it "will raise an error" do
          expect{calc.product(32, nil)}.to raise_error(/Nil/)
      end
    end
    context "multiply string value" do
      it "will raise an error" do
        expect{calc.product(20, "Anus")}.to raise_error(/String/)
      end
    end
  end
  describe ".quotient" do
    context "divide one number by another" do
      it "will return the quotient" do
        expect(calc.quotient(30, 6)).to eq(5)
      end
    end
    context "divide nil value" do
      it "will raise an error" do
          expect{calc.quotient(49, nil)}.to raise_error(/Nil/)
      end
    end
    context "divide string value" do
      it "will raise an error" do
        expect{calc.quotient("Chocolate Waterfall", 38)}.to raise_error(/String/)
      end
    end
    context "divide by zero" do
      it "will raise an error" do
        expect{calc.quotient(7,0)}.to raise_error(/zero/)
      end
    end
  end
  describe ".remainder" do
    context "divide one number by another" do
      it "will return the remainder" do
        expect(calc.remainder(36, 5)).to eq(1)
      end
    end
    context "divide nil value" do
      it "will raise an error" do
          expect{calc.remainder(81, nil)}.to raise_error(/Nil/)
      end
    end
    context "divide string value" do
      it "will raise an error" do
        expect{calc.remainder(11, "Leather Cheerio")}.to raise_error(/String/)
      end
    end
  end
end
