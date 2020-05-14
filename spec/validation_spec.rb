require "./lib/validation.rb"
describe Validation do
  describe "#valid_choice?" do
    let(:validation) { Validation.new }
    it "the input is text" do
      validation.user_input = 'g'.to_i
      expect(validation.valid_choice?).to eql(false)
    end
    it "the input is not a number between 1 and 6" do
      validation.user_input = 8
      expect(validation.valid_choice?).to eql(false)
    end
    it "the input is a number between 1 and 6" do
      validation.user_input = 2
      expect(validation.valid_choice?).to eql(true)
    end
  end
end