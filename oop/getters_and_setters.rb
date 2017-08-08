# Object Oriented Programming intro
# David.Hamaker@gmail.com

class ApiConnector
	attr_accessor :title, :description, :url

	def initialize(title: title, description: description, url: url = "http://google.com") #google is set as a default value
		@title = title
		@description = description
		@url = url
	end

	def testing_initializers
		puts @title
		puts @description
		puts @url
	end
end

class SmsConnector < ApiConnector
	def send_sms
		puts "Sending SMS"
		
	end
end

class PhoneConnector < ApiConnector
	def send_phone_call
		puts "Sending phone call"
	end
end

class MailConnector < ApiConnector
	def send_email
		puts "Sending email"
	end
end

sms = SmsConnector.new(title: "My title", description: "Some description here", url: "yahoo.com")
phone = PhoneConnector.new(title: "My title", description: "Some description here", url: "yahoo.com")
email = MailConnector.new(title: "My title", description: "Some description here", url: "yahoo.com")

sms.send_sms
phone.send_phone_call
email.send_email