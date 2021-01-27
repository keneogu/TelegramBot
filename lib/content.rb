require 'telegram/bot'
require_relative 'bot'

class Countries
	attr_reader :Nigeria, :Benin, :Togo, :Senegal
	
	def initialize
		@Nigeria = "Nigeria, officially known as the Federal Republic of Nigeria, 
		is a sovereign country in West Africa bordering Niger in the north, 
		Chad in the northeast, Cameroon in the east, and Benin in the west 
		Nigeria is the most populous country in Africa and the seventh most populous country in the world,
		It has the third-largest youth population in the world, after India and China, 
		with nearly half its population under the age of eighteen
		It's economy is the largest in Africa and the 24th largest in the world
		Nigeria is often referred to as the 'Giant of Africa', owing to its large population and economy /n
		Capital: Abuja
		Official languages: English"

		@Benin = "Benin, (formerly known as Dahomey), is a country in West Africa.
		t is bordered by Togo to the west, Nigeria to the east, Burkina Faso to the north-west, and Niger to the north-east.
		Benin is a tropical nation, highly dependent on agriculture, and is a large exporter of cotton and palm oil./n
		Capital: Porto-Novo
		Official languages: French"

		@Togo = "Togo, (French: République togolaise), 
		is a country in West Africa on the Gulf of Guinea, is known for its palm-lined beaches and hilltop villages. 
		bordered by Ghana to the west, Benin to the east and Burkina Faso to the north
		Capital: Lome
		Official languages: French"

		@Senegal = "Senegal is bordered by Mauritania in the north, Mali to the east, 
		Guinea to the southeast, and Guinea-Bissau to the southwest. 
		Senegal nearly surrounds The Gambia, a country occupying a 
		narrow sliver of land along the banks of the Gambia River, 
		which separates Senegal's southern region of Casamance from the rest of the country.
		Capital: Dakar
		Official language: French"
	end
end