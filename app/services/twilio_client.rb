class TwilioClient
  require "twilio-ruby"
  attr_reader :client

  def initialize
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_text(user, message)
    client.api.account.messages.create( 
      to: +18162560783,
      from: +18316031152,
      body: message + " - #{user.name}"
    )
  end

  private

    def account_sid
      Rails.application.credentials.twilio[:account_sid]
    end

    def auth_token
      Rails.application.credentials.twilio[:auth_token]
    end
  end