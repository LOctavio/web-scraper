require './lib/page_data.rb'
describe PageData do
  let(:page_data) { PageData.new }
  describe '#last_patches' do
    it 'shows the last six patches' do
      hash = {}
      page_data.last_patches { |x, index| hash[index + 1] = x.content }
      expect(hash.all? { |key, value| (key >= 1 && key <= 6) && (value.include? 'Patch') }).to eql(true)
    end
  end

  describe '#changes_list' do
    it 'shows the champions changes (and items if there are at least one of them)' do
      page_data.choice = 1
      arr = []
      page_data.changes_list { |x| (arr << x.content) if %w[h2 h3 h4 div].any?(x.name) }
      expect(arr != []).to eql(true)
    end
  end
end
