require_relative '../lib/content'

describe Countries do
  describe '#initialize' do
    subject(:country) { Countries.new }
    it 'displays information about Nigeria' do
      expect(country.nigeria).to match(/s/)
    end
    it 'displays information about togo' do
      expect(country.nigeria).to be
      "Togo, (French: République togolaise), \n
		is a country in West Africa on the Gulf of Guinea, \n
		is known for its palm-lined beaches and hilltop villages. \n
		bordered by Ghana to the west, Benin to the east and Burkina Faso to the north \n
		Capital: Lome
		Official languages: French"
    end
  end
end
