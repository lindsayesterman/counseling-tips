import smtplib

#Log into your gmail account
email_address = "shilospaw@gmail.com"
password = "esterman1"

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login(email_address, password)


#Type in the person you'd like to send an email to automatically
#For testing purposes, you can send the email to yourself.
recipient = "lindsayesterman@gmail.com"

#Type a short message that you'd like to be sent
msg = "Hi there! I enjoy coding!"

#now send the message
server.sendmail(email_address, recipient, msg)

#now log out
server.quit()
print("sent")