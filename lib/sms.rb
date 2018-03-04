require 'rubygems'
require 'twilio-ruby'
require 'time'

class Sms
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']
  client = Twilio::REST::Client.new account_sid, auth_token

  from =  ENV['TWILIO_NUMBER']
  to =  ENV['MY_NUMBER']

  client.messages.create(
  from: from,
  to: to,
  body: "Thank you. Your order was placed and will be delivered to you by #{(Time.now + 3600).to_s.split[1]}"
  )
end
