# rubocop: disable Metrics/MethodLength, Metrics/CyclomaticComplexity
require 'telegram/bot'
require_relative 'content'

class Bot
  attr_reader :token, :countries

  def initialize
    @token = '1583152588:AAHSFkxUfbonb-w-R58XrBbbfuFFhe2suWg'
    @countries = Countries.new
  end

  def messages
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text

        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: welcome_text(message.from.first_name))
        when '/Nigeria'
          country_selector('nigeria', bot, message)

        when '/Togo'
          country_selector('togo', bot, message)

        when '/Benin'
          country_selector('benin', bot, message)

        when '/Senegal'
          country_selector('senegal', bot, message)

        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text:
          "Thanks for accessing, #{message.from.first_name}. Bye!", date: message.date)

        else
          bot.api.send_message(chat_id: message.chat.id, text: 'Invalid text! or country not avaliable at the moment')
        end
      end
    end
  end

  def welcome_text(message)
    "Hello, #{message}
		This is a ruby project created by kene\n
		Use /start to start the bot\n
		Use /stop to stop or end the bot\n
		enter / + country name in west africa to obtain information about the country\n
    example enter: /Nigeria  /Togo   /Benin  /Senegal"
  end

  private

  def country_selector(country, bot, message)
    @countries.send(country)
    bot.api.send_message(chat_id: message.chat.id, text: @countries.send(country), date: message.date)
  end
end
# rubocop: enable Metrics/MethodLength, Metrics/CyclomaticComplexity
