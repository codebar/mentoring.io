puts "***** Twilio is not configured *****" if ENV["TWILIO_TOKEN"].nil? || ENV["TWILIO_SID"].nil?
Twilio.configure do |config|
  config.account_sid = ENV["TWILIO_SID"]
  config.auth_token = ENV["TWILIO_TOKEN"]
end
