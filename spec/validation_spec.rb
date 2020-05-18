require_relative '../lib/validation.rb'
describe Validation do
  let(:validation) { Validation.new }
  describe '#valid_choice?' do
    it 'the input is text' do
      validation.user_input = 'g'.to_i
      expect(validation.valid_choice?).to eql(false)
    end
    it 'the input is not a number between 1 and 6' do
      validation.user_input = 8
      expect(validation.valid_choice?).to eql(false)
    end
    it 'the input is a number between 1 and 6' do
      validation.user_input = 2
      expect(validation.valid_choice?).to eql(true)
    end
  end

  describe '#yes_no_answer?' do
    it 'the input is neither yes nor no' do
      validation.user_input = 'has'
      expect(validation.yes_no_answer?).to eql(false)
    end
    it 'the input is yes' do
      validation.user_input = 'no'
      expect(validation.yes_no_answer?).to eql(true)
    end
    it 'the input is no' do
      validation.user_input = 'yes'
      expect(validation.yes_no_answer?).to eql(true)
    end
  end
end
