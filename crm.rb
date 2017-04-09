require_relative 'contact.rb'
require 'sinatra'



# Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
# Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
# Contact.create('Steve', 'Jobs', 'steve@apple.com', 'Visionary')

get '/' do
  @crm_app_name = "Swapz CRM"
  erb :index
end

get '/contacts' do
  @crm_app_name = "Swapz CRM"
  erb :contacts
end

get '/contacts/new' do
  @crm_app_name = "Swapz CRM"
  erb :new_contact
end

post '/contacts' do
  contact = Contact.create(params[:first_name],params[:last_name], params[:email], params[:note]
)
redirect to('/contacts')
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

delete '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  if @contact.delete
    redirect to ('/contacts')
  elseraise Sinatra::NotFound
end
end

after do
  ActiveRecord::Base.connection.close
end
# # Contacts.create('Betty', 'Maker', 'betty@bitmakerlabs.com', 'Developer')
