require './lib/page_data.rb'
describe PageData do
  let(:page_data) { PageData.new }
  describe '#last_patches' do
    it 'the method shows the last six patches' do
      hash = {}
      page_data.last_patches { |x, index| hash[index + 1] = x.content }
      puts hash
      expect(hash.all? { |key, value| (key >= 1 && key <= 6) && (value.include? 'Patch') }).to eql(true)
    end
  end
end
