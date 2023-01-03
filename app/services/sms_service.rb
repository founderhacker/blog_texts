class SmsService
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def send_text!
    params = { number: ENV['admin_phone_number'], message: body }
    resp = HTTParty.get(ENV['sms_server'], body: params)
    JSON.parse(resp.body)
  end

  def body
    "[#{message.name}] #{message.content}"
  end
end
