# app.rb
require 'sinatra'
require './mailer.rb'

get '/' do
  erb :index
end

post '/signup' do
    # TODO: eventually, actually save the email to the DB
   success = params['success']
   erb :index
end 

post '/signup/:signupStatus' do
    # TODO: eventually, actually save the email to the DB
   puts "Params: ${params}"
   puts params

   puts "The email should be here:  "
   puts params[:Email]

   sendTheEmail params[:Email]

   erb :index
end 