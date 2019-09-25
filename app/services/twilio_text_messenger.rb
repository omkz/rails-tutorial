class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
                               from: Rails.application.credentials.twilio[:phone_number],
                               to: +62858,
                               body: message
                           })
  end
end