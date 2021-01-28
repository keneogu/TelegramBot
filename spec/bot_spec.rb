require_relative '../lib/bot'
require_relative '../lib/content'
require_relative 'spec_helper'

RSpec.describe Bot do
  describe '##welcome_message' do
    let(:bot) { Bot.new }
    it 'should send the message' do
      expect(bot.welcome_text('Kene')).to match(/Kene/)
    end
  end

  describe '#initialize' do
    let(:bot) { Bot.new }
    it 'sets the token to be a string' do
      expect(bot.instance_variable_get(:@token)).to be_a(String)
    end

    it 'sets the country to be a string' do
      expect(bot.instance_variable_get(:@countries)).to be_a(Countries)
    end
  end
end
