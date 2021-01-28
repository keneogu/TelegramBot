require_relative '../lib/content'

describe Countries do
  describe '#initialize' do
    subject(:country) { Countries.new }
    it 'displays information about Nigeria' do
      expect(country.nigeria).to match(/s/)
    end
  end
end
