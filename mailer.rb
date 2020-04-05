require 'sendgrid-ruby'
include SendGrid

def sendTheEmail theUsersEmail

	puts "the key is !!!! #{ENV['SENDGRID_API_KEY']}"

#	ENV['SENDGRID_API_KEY'] = "no more"

	puts "the key is !!!! #{ENV['SENDGRID_API_KEY']}"

	from = Email.new(email: 'test@example.com')
	to = Email.new(email: 'lindsayesterman@gmail.com')
	subject = 'You have a new signup!'
	content = Content.new(type: 'text/plain', value: 'Hey boo, a here is the users email: ' + theUsersEmail)
	mail = Mail.new(from, subject, to, content)

	puts mail.from
	puts mail.subject
	puts to
	puts content

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers

end 