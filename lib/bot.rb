require 'telegram/bot'

token = "1583152588:AAHSFkxUfbonb-w-R58XrBbbfuFFhe2suWg"

def messages
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
	case message.text
	when '/start'
		bot.api.send_message(chat_id: message.chat.id, text:
		"Hello, #{message.from.first_name} \n
		This is a ruby project created by kene \n
		Use /start to start the bot\n
		Use /stop to stop or end the bot\n
		enter / + country name in west africa to obtain information about the country\n
		example enter: /Nigeria  /Togo   /Benin  /Burkina_Faso
		/Côte_D'Ivoire  /Senegal  /Sierra_Leone  /Ghana /Mauritania"
		)
	when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text:
          "Thanks for accessing, #{message.from.first_name}. Bye!", date: message.date)
		
	else
		bot.api.send_message(chat_id: message.chat.id, text: "Invalid text!")
	end
end
end
end