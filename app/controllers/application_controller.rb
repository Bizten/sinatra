class ApplicationController < Sinatra::Base
configure do
  set :public_folder, 'public'
  set :views, 'app/views' enable :session
  set :session_secret, 'password_security'
end

get '/' do
  'Hello, World!'
end
end
