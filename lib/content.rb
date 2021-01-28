# rubocop: disable Metrics/MethodLength

class Countries
  attr_reader :nigeria, :benin, :togo, :senegal

  def initialize
    @nigeria = "Nigeria, officially known as the Federal Republic of Nigeria, \n
		is a sovereign country in West Africa bordering Niger in the north, \n
		Chad in the northeast, Cameroon in the east, and Benin in the west \n
		Nigeria is the most populous country in Africa and the seventh most populous country in the world,\n
		It has the third-largest youth population in the world, after India and China, \n
		with nearly half its population under the age of eighteen \n
		It's economy is the largest in Africa and the 24th largest in the world \n
		Nigeria is often referred to as the 'Giant of Africa', owing to its large population and economy \n
		Capital: Abuja
		Official languages: English"

    @benin = "Benin, (formerly known as Dahomey), is a country in West Africa. \n
		It is bordered by Togo to the west, Nigeria to the east, \n
		Burkina Faso to the north-west, and Niger to the north-east. \n
		Benin is a tropical nation, highly dependent on agriculture, \n
		and is a large exporter of cotton and palm oil. \n
		Capital: Porto-Novo
		Official languages: French"

    @togo = "Togo, (French: République togolaise), \n
		is a country in West Africa on the Gulf of Guinea, \n
		is known for its palm-lined beaches and hilltop villages. \n
		bordered by Ghana to the west, Benin to the east and Burkina Faso to the north \n
		Capital: Lome
		Official languages: French"

    @senegal = "Senegal is bordered by Mauritania in the north, Mali to the east, \n
		Guinea to the southeast, and Guinea-Bissau to the southwest. \n
		Senegal nearly surrounds The Gambia, a country occupying a \n
		narrow sliver of land along the banks of the Gambia River, \n
		which separates Senegal's southern region of Casamance from the rest of the country.\n
		Capital: Dakar
		Official language: French"
  end
end
# rubocop: enable Metrics/MethodLength
