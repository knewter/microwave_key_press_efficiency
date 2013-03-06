require File.expand_path("../../../../lib/microwave_key_press_efficiency/calculator", __FILE__)

module MicrowaveKeyPressEfficiency
  describe Calculator do
    let(:calculator) { Calculator.new }

    describe "#keys_to_press" do
      it "returns most effective keys to press" do
        expect(calculator.keys_to_press(99)).to eq(99)
        expect(calculator.keys_to_press(71)).to eq(111)
        expect(calculator.keys_to_press(120)).to eq(200)
        expect(calculator.keys_to_press(123)).to eq(123)
      end
    end

    describe "#efficiency" do
      it "returns score based on keys that needs to be pressed" do
        expect(calculator.efficiency([9, 9])).to eq(1)
        expect(calculator.efficiency([1, 3, 9])).to eq(5)
        expect(calculator.efficiency([1, 2, 0])).to eq(5)
        expect(calculator.efficiency([2, 0, 0])).to eq(4)
      end
    end
  end
end
