# rubocop: disable Metrics/MethodLength
require 'telegram/bot'
require_relative 'content'

class Bot
  attr_reader :token, :countries

  def initialize
    @token = '1583152588:AAHSFkxUfbonb-w-R58XrBbbfuFFhe2suWg'
    @countries = Countries.new
    messages
  end
end

def messages
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text

      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text:
        "Hello, #{message.from.first_name}
		This is a ruby project created by kene\n
		Use /start to start the bot\n
		Use /stop to stop or end the bot\n
		enter / + country name in west africa to obtain information about the country\n
		example enter: /Nigeria  /Togo   /Benin  /Senegal")

      when '/Nigeria'
        @countries.nigeria
        bot.api.send_message(chat_id: message.chat.id, text: @countries.nigeria, date: message.date)

      when '/Togo'
        @countries.togo
        bot.api.send_message(chat_id: message.chat.id, text: @countries.togo, date: message.date)

      when '/Benin'
        @countries.benin
        bot.api.send_message(chat_id: message.chat.id, text: @countries.benin, date: message.date)

      when '/Senegal'
        @countries.senegal
        bot.api.send_message(chat_id: message.chat.id, text: @countries.senegal, date: message.date)

      when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text:
        "Thanks for accessing, #{message.from.first_name}. Bye!", date: message.date)

      else
        bot.api.send_message(chat_id: message.chat.id, text: 'Invalid text! or country not avaliable at the moment')
      end
    end
  end
end
# rubocop: enable Metrics/MethodLength
